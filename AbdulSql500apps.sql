	CREATE TABLE Users
    (
      [UserID] BIGINT PRIMARY KEY IDENTITY(1,1),
      [UserName] NVARCHAR(50) ,
      [FirstName] NVARCHAR(50) ,
      [LastName] NVARCHAR(50),
	  [ProfilePic] NVARCHAR(50),
    )

	CREATE TABLE Emails
    (
      [EmailID] BIGINT PRIMARY KEY IDENTITY(1,1),
      [Subject] NVARCHAR(MAX) ,
      [Body] NVARCHAR(MAX) ,
      [Date] DATETIME
    )

	CREATE TABLE EmailStatus
	(
		[EmailStatusID] BIGINT PRIMARY KEY IDENTITY(1,1),
		[EmailTag] VARCHAR(50) -- SENT,INBOX,DRAFTS
	)

	CREATE TABLE User_Emails_Mapping
    (
      [MessageID] BIGINT ,
      [UserID] BIGINT ,
	  [EmailStatusID] BIGINT,
      [IsRead] TINYINT ,
      [IsStarred] TINYINT
    )