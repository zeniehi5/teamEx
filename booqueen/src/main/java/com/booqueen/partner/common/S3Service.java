package com.booqueen.partner.common;

import java.io.File;
import java.io.InputStream;

import org.springframework.stereotype.Service;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.SdkClientException;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.regions.Regions;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3ClientBuilder;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.DeleteObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;

@Service
public class S3Service {
	
	private AmazonS3 s3Client;
	
	final private String accessKey = "AKIAR3ILZRPYNQ3U5S7O";
	final private String secretKey = "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";

	private Regions clientRegion = Regions.AP_NORTHEAST_2;
	private String bucket = "booqueen";
	
	private S3Service() {
		createS3Client();
	}
	
	static private S3Service instance = null;
	
	public static S3Service getInstance() {
		if(instance == null) {
			return new S3Service();
		} else {
			return instance;
		}
	}
	
	private void createS3Client() {
		AWSCredentials credentials = new BasicAWSCredentials(accessKey, secretKey);
		this.s3Client = AmazonS3ClientBuilder.standard().withCredentials(new AWSStaticCredentialsProvider(credentials)).withRegion(clientRegion).build();
	}
	
	public void upload(File file, String key) {
		uploadToS3(new PutObjectRequest(this.bucket, key, file));
	}
	
	/* MultipartFile占쎌뱽 占쎌뵠占쎌뒠占쎈막 野껋럩�뒭 */
	public void upload(InputStream is, String key, String contentType, long contentLength) {
		ObjectMetadata objectMetadata = new ObjectMetadata();
		objectMetadata.setContentType(contentType);
		objectMetadata.setContentLength(contentLength);
		
		uploadToS3(new PutObjectRequest(this.bucket, key, is, objectMetadata));
	}
	
	public void copy(String orgKey, String copyKey) {
		try {
			CopyObjectRequest copyObjectRequest = new CopyObjectRequest(this.bucket, orgKey, this.bucket, copyKey);
			this.s3Client.copyObject(copyObjectRequest);
			System.out.println(String.format("Finish copying [%s] to [%s]", orgKey, copyKey));
		} catch(AmazonServiceException ase) {
			ase.printStackTrace();
		} catch(SdkClientException sce) {
			sce.printStackTrace();
		}
	}
	
	public void delete(String key) {
		try {
			DeleteObjectRequest deleteObjectRequest = new DeleteObjectRequest(this.bucket,key);
			this.s3Client.deleteObject(deleteObjectRequest);
			System.out.println(String.format( "[%s] deletion comlete", key));
		} catch(AmazonServiceException ase) {
			ase.printStackTrace();
		} catch(SdkClientException sce) {
			sce.printStackTrace();
		}
	}
	
	private void uploadToS3(PutObjectRequest putObjectRequest) {
		try {
			this.s3Client.putObject(putObjectRequest);
			System.out.println(String.format("[%s] upload complete", putObjectRequest.getKey()));
		} catch(AmazonServiceException e) {
			e.printStackTrace();
		} catch(SdkClientException e) {
			e.printStackTrace();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}