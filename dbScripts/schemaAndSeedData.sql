CREATE TABLE CATEGORY(CATEGORY_ID INT PRIMARY KEY,
					  CATEGORY_NAME VARCHAR(255) NOT NULL);

CREATE TABLE TAGS(TAG_ID INT PRIMARY KEY,
				  TAG_NAME VARCHAR(255) NOT NULL);


CREATE TABLE PET(ID INT PRIMARY KEY, 
				  CATEGORY_ID VARCHAR(255) NULL,
				  NAME VARCHAR(255) NOT NULL,
				  STATUS VARCHAR(10) NULL,
				  FOREIGN KEY (CATEGORY_ID) REFERENCES CATEGORY(CATEGORY_ID));


CREATE TABLE PET_PHOTO_URLS
				(PET_ID INT NOT NULL,
				 PHOTO_URLS VARCHAR(2000) NOT NULL,
				 FOREIGN KEY (PET_ID) REFERENCES PET(ID));


CREATE TABLE PET_TAGS
				(PET_ID INT NOT NULL,
				 TAG_ID INT NOT NULL,
				 FOREIGN KEY (PET_ID) REFERENCES PET(ID),
				 FOREIGN KEY (TAG_ID) REFERENCES TAGS(TAG_ID));

INSERT INTO CATEGORY VALUES (0, 'Category 0');				 
INSERT INTO CATEGORY VALUES (1, 'Category 1');
INSERT INTO CATEGORY VALUES (2, 'Category 2');
INSERT INTO CATEGORY VALUES (3, 'Category 3');			

INSERT INTO TAG VALUES (0, 'Tags 0');
INSERT INTO TAG VALUES (1, 'Tags 1');
INSERT INTO TAG VALUES (2, 'Tags 2');
INSERT INTO TAG VALUES (3, 'Tags 3');	 