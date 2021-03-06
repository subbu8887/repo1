USE [eu03_awdb]
GO
/****** Object:  UserDefinedDataType [dbo].[CHANGESTAMP]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[CHANGESTAMP] FROM [int] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DBCHAR]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[DBCHAR] FROM [char](1) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DBDATETIME]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[DBDATETIME] FROM [datetime] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DBFLT4]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[DBFLT4] FROM [real] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DBFLT8]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[DBFLT8] FROM [float] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DBINT]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[DBINT] FROM [int] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DBSMALLDATE]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[DBSMALLDATE] FROM [smalldatetime] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DBSMALLINT]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[DBSMALLINT] FROM [smallint] NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DBTINYINT]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[DBTINYINT] FROM [tinyint] NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[DESCRIPTION]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[DESCRIPTION] FROM [varchar](255) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[GLOBALID]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[GLOBALID] FROM [varchar](32) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[TELNO]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[TELNO] FROM [char](10) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[VNAME32]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[VNAME32] FROM [varchar](32) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[VTELNO10]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[VTELNO10] FROM [varchar](10) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[VTELNO20]    Script Date: 05-07-2018 13:37:25 ******/
CREATE TYPE [dbo].[VTELNO20] FROM [varchar](20) NULL
GO
/****** Object:  Table [dbo].[AWControl]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AWControl](
	[LastRetrievalTime] [datetime] NULL,
	[LastRetrievalKey] [dbo].[DBFLT8] NOT NULL,
	[ControllerConfigChangeTime] [datetime] NULL,
	[ControllerConfigChangeKey] [dbo].[DBFLT8] NOT NULL,
	[ConfigChangedBySystemName] [dbo].[VNAME32] NULL,
	[ConfigChangedByUserName] [varchar](64) NULL,
	[HDSPropertyEnabled] [dbo].[DBCHAR] NOT NULL,
	[AWType] [dbo].[DBINT] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Agent_Event_DetailTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_Event_DetailTmp1](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LoginDateTime] [dbo].[DBDATETIME] NOT NULL,
	[Event] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[Duration] [dbo].[DBINT] NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_Event_DetailTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_Event_DetailTmp2](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LoginDateTime] [dbo].[DBDATETIME] NOT NULL,
	[Event] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[Duration] [dbo].[DBINT] NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_Half_HourTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_Half_HourTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LoggedOnTimeToHalf] [dbo].[DBINT] NULL,
	[AvailTimeToHalf] [dbo].[DBINT] NULL,
	[NotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOtherTimeToHalf] [dbo].[DBINT] NULL,
	[AvailableInMRDTimeToHalf] [dbo].[DBINT] NULL,
	[RoutableInMRDTimeToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandToHalf] [dbo].[DBINT] NULL,
	[RouterCallsDequeuedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsRedirectedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[RouterCallsHandledToHalf] [dbo].[DBINT] NULL,
	[RouterErrorToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_Half_HourTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_Half_HourTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LoggedOnTimeToHalf] [dbo].[DBINT] NULL,
	[AvailTimeToHalf] [dbo].[DBINT] NULL,
	[NotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOtherTimeToHalf] [dbo].[DBINT] NULL,
	[AvailableInMRDTimeToHalf] [dbo].[DBINT] NULL,
	[RoutableInMRDTimeToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandToHalf] [dbo].[DBINT] NULL,
	[RouterCallsDequeuedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsRedirectedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[RouterCallsHandledToHalf] [dbo].[DBINT] NULL,
	[RouterErrorToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_IntervalTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agent_IntervalTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LoggedOnTime] [dbo].[DBINT] NULL,
	[AvailTime] [dbo].[DBINT] NULL,
	[NotReadyTime] [dbo].[DBINT] NULL,
	[TalkOtherTime] [dbo].[DBINT] NULL,
	[AvailableInMRDTime] [dbo].[DBINT] NULL,
	[RoutableInMRDTime] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOffered] [dbo].[DBINT] NULL,
	[RouterCallsAband] [dbo].[DBINT] NULL,
	[RouterCallsDequeued] [dbo].[DBINT] NULL,
	[RouterCallsRedirected] [dbo].[DBINT] NULL,
	[RouterCallsAnswered] [dbo].[DBINT] NULL,
	[RouterCallsHandled] [dbo].[DBINT] NULL,
	[RouterError] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[NonACDLineCallsInCount] [dbo].[DBINT] NULL,
	[NonACDLineCallsOutCount] [dbo].[DBINT] NULL,
	[NonACDLineCallsInTime] [dbo].[DBINT] NULL,
	[NonACDLineCallsOutTime] [dbo].[DBINT] NULL,
	[Extension] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Agent_IntervalTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agent_IntervalTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LoggedOnTime] [dbo].[DBINT] NULL,
	[AvailTime] [dbo].[DBINT] NULL,
	[NotReadyTime] [dbo].[DBINT] NULL,
	[TalkOtherTime] [dbo].[DBINT] NULL,
	[AvailableInMRDTime] [dbo].[DBINT] NULL,
	[RoutableInMRDTime] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOffered] [dbo].[DBINT] NULL,
	[RouterCallsAband] [dbo].[DBINT] NULL,
	[RouterCallsDequeued] [dbo].[DBINT] NULL,
	[RouterCallsRedirected] [dbo].[DBINT] NULL,
	[RouterCallsAnswered] [dbo].[DBINT] NULL,
	[RouterCallsHandled] [dbo].[DBINT] NULL,
	[RouterError] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[NonACDLineCallsInCount] [dbo].[DBINT] NULL,
	[NonACDLineCallsOutCount] [dbo].[DBINT] NULL,
	[NonACDLineCallsInTime] [dbo].[DBINT] NULL,
	[NonACDLineCallsOutTime] [dbo].[DBINT] NULL,
	[Extension] [varchar](32) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Agent_LogoutTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agent_LogoutTmp1](
	[LogoutDateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[LoginDuration] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[Extension] [varchar](32) NULL,
	[PhoneType] [dbo].[DBSMALLINT] NULL,
	[RemotePhoneNumber] [varchar](32) NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Agent_LogoutTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agent_LogoutTmp2](
	[LogoutDateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[LoginDuration] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[Extension] [varchar](32) NULL,
	[PhoneType] [dbo].[DBSMALLINT] NULL,
	[RemotePhoneNumber] [varchar](32) NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Agent_Skill_Group_Half_HouTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_Skill_Group_Half_HouTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AbandonRingCallsToHalf] [dbo].[DBINT] NULL,
	[AbandonRingTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldCallsToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[AgentTerminatedCallsToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvailTimeToHalf] [dbo].[DBINT] NULL,
	[BusyOtherTimeToHalf] [dbo].[DBINT] NULL,
	[CallbackMessagesTimeToHalf] [dbo].[DBINT] NULL,
	[CallbackMessagesToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdToHalf] [dbo].[DBINT] NULL,
	[InternalCallsTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsToHalf] [dbo].[DBINT] NULL,
	[LoggedOnTimeToHalf] [dbo].[DBINT] NULL,
	[NotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReservedStateTimeToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsTimeToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsToHalf] [dbo].[DBINT] NULL,
	[TalkInTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOtherTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOutTimeToHalf] [dbo].[DBINT] NULL,
	[TransferredInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[TransferredInCallsToHalf] [dbo].[DBINT] NULL,
	[TransferredOutCallsToHalf] [dbo].[DBINT] NULL,
	[WorkNotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[WorkReadyTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[TalkAutoOutTimeToHalf] [dbo].[DBINT] NULL,
	[TalkPreviewTimeToHalf] [dbo].[DBINT] NULL,
	[TalkReserveTimeToHalf] [dbo].[DBINT] NULL,
	[BargeInCallsToHalf] [dbo].[DBINT] NULL,
	[InterceptCallsToHalf] [dbo].[DBINT] NULL,
	[MonitorCallsToHalf] [dbo].[DBINT] NULL,
	[WhisperCallsToHalf] [dbo].[DBINT] NULL,
	[EmergencyAssistsToHalf] [dbo].[DBINT] NULL,
	[InterruptedTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldOutCallsToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[NetConfOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetTransferredOutCallsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_Skill_Group_Half_HouTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_Skill_Group_Half_HouTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AbandonRingCallsToHalf] [dbo].[DBINT] NULL,
	[AbandonRingTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldCallsToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[AgentTerminatedCallsToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvailTimeToHalf] [dbo].[DBINT] NULL,
	[BusyOtherTimeToHalf] [dbo].[DBINT] NULL,
	[CallbackMessagesTimeToHalf] [dbo].[DBINT] NULL,
	[CallbackMessagesToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdToHalf] [dbo].[DBINT] NULL,
	[InternalCallsTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsToHalf] [dbo].[DBINT] NULL,
	[LoggedOnTimeToHalf] [dbo].[DBINT] NULL,
	[NotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReservedStateTimeToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsTimeToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsToHalf] [dbo].[DBINT] NULL,
	[TalkInTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOtherTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOutTimeToHalf] [dbo].[DBINT] NULL,
	[TransferredInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[TransferredInCallsToHalf] [dbo].[DBINT] NULL,
	[TransferredOutCallsToHalf] [dbo].[DBINT] NULL,
	[WorkNotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[WorkReadyTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[TalkAutoOutTimeToHalf] [dbo].[DBINT] NULL,
	[TalkPreviewTimeToHalf] [dbo].[DBINT] NULL,
	[TalkReserveTimeToHalf] [dbo].[DBINT] NULL,
	[BargeInCallsToHalf] [dbo].[DBINT] NULL,
	[InterceptCallsToHalf] [dbo].[DBINT] NULL,
	[MonitorCallsToHalf] [dbo].[DBINT] NULL,
	[WhisperCallsToHalf] [dbo].[DBINT] NULL,
	[EmergencyAssistsToHalf] [dbo].[DBINT] NULL,
	[InterruptedTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldOutCallsToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[NetConfOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetTransferredOutCallsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_Skill_Group_IntervalTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_Skill_Group_IntervalTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AbandonRingCalls] [dbo].[DBINT] NULL,
	[AbandonRingTime] [dbo].[DBINT] NULL,
	[AbandonHoldCalls] [dbo].[DBINT] NULL,
	[AgentOutCallsTime] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AgentOutCalls] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHold] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[AgentTerminatedCalls] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AvailTime] [dbo].[DBINT] NULL,
	[BusyOtherTime] [dbo].[DBINT] NULL,
	[CallbackMessagesTime] [dbo].[DBINT] NULL,
	[CallbackMessages] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[ConsultativeCalls] [dbo].[DBINT] NULL,
	[ConsultativeCallsTime] [dbo].[DBINT] NULL,
	[ConferencedInCalls] [dbo].[DBINT] NULL,
	[ConferencedInCallsTime] [dbo].[DBINT] NULL,
	[ConferencedOutCalls] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTime] [dbo].[DBINT] NULL,
	[HandledCallsTalkTime] [dbo].[DBINT] NULL,
	[HandledCallsTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTime] [dbo].[DBINT] NULL,
	[InternalCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTime] [dbo].[DBINT] NULL,
	[InternalCallsRcvd] [dbo].[DBINT] NULL,
	[InternalCallsTime] [dbo].[DBINT] NULL,
	[InternalCalls] [dbo].[DBINT] NULL,
	[LoggedOnTime] [dbo].[DBINT] NULL,
	[NotReadyTime] [dbo].[DBINT] NULL,
	[RedirectNoAnsCalls] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTime] [dbo].[DBINT] NULL,
	[ReservedStateTime] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[SupervAssistCallsTime] [dbo].[DBINT] NULL,
	[SupervAssistCalls] [dbo].[DBINT] NULL,
	[TalkInTime] [dbo].[DBINT] NULL,
	[TalkOtherTime] [dbo].[DBINT] NULL,
	[TalkOutTime] [dbo].[DBINT] NULL,
	[TransferredInCallsTime] [dbo].[DBINT] NULL,
	[TransferredInCalls] [dbo].[DBINT] NULL,
	[TransferredOutCalls] [dbo].[DBINT] NULL,
	[WorkNotReadyTime] [dbo].[DBINT] NULL,
	[WorkReadyTime] [dbo].[DBINT] NULL,
	[AutoOutCalls] [dbo].[DBINT] NULL,
	[AutoOutCallsTime] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHold] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[PreviewCalls] [dbo].[DBINT] NULL,
	[PreviewCallsTime] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTime] [dbo].[DBINT] NULL,
	[PreviewCallsOnHold] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTime] [dbo].[DBINT] NULL,
	[ReserveCalls] [dbo].[DBINT] NULL,
	[ReserveCallsTime] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTime] [dbo].[DBINT] NULL,
	[ReserveCallsOnHold] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTime] [dbo].[DBINT] NULL,
	[TalkAutoOutTime] [dbo].[DBINT] NULL,
	[TalkPreviewTime] [dbo].[DBINT] NULL,
	[TalkReserveTime] [dbo].[DBINT] NULL,
	[BargeInCalls] [dbo].[DBINT] NULL,
	[InterceptCalls] [dbo].[DBINT] NULL,
	[MonitorCalls] [dbo].[DBINT] NULL,
	[WhisperCalls] [dbo].[DBINT] NULL,
	[EmergencyAssists] [dbo].[DBINT] NULL,
	[InterruptedTime] [dbo].[DBINT] NULL,
	[AbandonHoldOutCalls] [dbo].[DBINT] NULL,
	[NetConsultativeCalls] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTime] [dbo].[DBINT] NULL,
	[NetConferencedOutCalls] [dbo].[DBINT] NULL,
	[NetConfOutCallsTime] [dbo].[DBINT] NULL,
	[NetTransferredOutCalls] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[ConsultOutCalls] [dbo].[DBINT] NULL,
	[ConsultOutCallsTime] [dbo].[DBINT] NULL,
	[AttributeID1] [dbo].[DBINT] NULL,
	[AttributeID2] [dbo].[DBINT] NULL,
	[AttributeID3] [dbo].[DBINT] NULL,
	[AttributeID4] [dbo].[DBINT] NULL,
	[AttributeID5] [dbo].[DBINT] NULL,
	[AttributeID6] [dbo].[DBINT] NULL,
	[AttributeID7] [dbo].[DBINT] NULL,
	[AttributeID8] [dbo].[DBINT] NULL,
	[AttributeID9] [dbo].[DBINT] NULL,
	[AttributeID10] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_Skill_Group_IntervalTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_Skill_Group_IntervalTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AbandonRingCalls] [dbo].[DBINT] NULL,
	[AbandonRingTime] [dbo].[DBINT] NULL,
	[AbandonHoldCalls] [dbo].[DBINT] NULL,
	[AgentOutCallsTime] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AgentOutCalls] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHold] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[AgentTerminatedCalls] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AvailTime] [dbo].[DBINT] NULL,
	[BusyOtherTime] [dbo].[DBINT] NULL,
	[CallbackMessagesTime] [dbo].[DBINT] NULL,
	[CallbackMessages] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[ConsultativeCalls] [dbo].[DBINT] NULL,
	[ConsultativeCallsTime] [dbo].[DBINT] NULL,
	[ConferencedInCalls] [dbo].[DBINT] NULL,
	[ConferencedInCallsTime] [dbo].[DBINT] NULL,
	[ConferencedOutCalls] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTime] [dbo].[DBINT] NULL,
	[HandledCallsTalkTime] [dbo].[DBINT] NULL,
	[HandledCallsTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTime] [dbo].[DBINT] NULL,
	[InternalCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTime] [dbo].[DBINT] NULL,
	[InternalCallsRcvd] [dbo].[DBINT] NULL,
	[InternalCallsTime] [dbo].[DBINT] NULL,
	[InternalCalls] [dbo].[DBINT] NULL,
	[LoggedOnTime] [dbo].[DBINT] NULL,
	[NotReadyTime] [dbo].[DBINT] NULL,
	[RedirectNoAnsCalls] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTime] [dbo].[DBINT] NULL,
	[ReservedStateTime] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[SupervAssistCallsTime] [dbo].[DBINT] NULL,
	[SupervAssistCalls] [dbo].[DBINT] NULL,
	[TalkInTime] [dbo].[DBINT] NULL,
	[TalkOtherTime] [dbo].[DBINT] NULL,
	[TalkOutTime] [dbo].[DBINT] NULL,
	[TransferredInCallsTime] [dbo].[DBINT] NULL,
	[TransferredInCalls] [dbo].[DBINT] NULL,
	[TransferredOutCalls] [dbo].[DBINT] NULL,
	[WorkNotReadyTime] [dbo].[DBINT] NULL,
	[WorkReadyTime] [dbo].[DBINT] NULL,
	[AutoOutCalls] [dbo].[DBINT] NULL,
	[AutoOutCallsTime] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHold] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[PreviewCalls] [dbo].[DBINT] NULL,
	[PreviewCallsTime] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTime] [dbo].[DBINT] NULL,
	[PreviewCallsOnHold] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTime] [dbo].[DBINT] NULL,
	[ReserveCalls] [dbo].[DBINT] NULL,
	[ReserveCallsTime] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTime] [dbo].[DBINT] NULL,
	[ReserveCallsOnHold] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTime] [dbo].[DBINT] NULL,
	[TalkAutoOutTime] [dbo].[DBINT] NULL,
	[TalkPreviewTime] [dbo].[DBINT] NULL,
	[TalkReserveTime] [dbo].[DBINT] NULL,
	[BargeInCalls] [dbo].[DBINT] NULL,
	[InterceptCalls] [dbo].[DBINT] NULL,
	[MonitorCalls] [dbo].[DBINT] NULL,
	[WhisperCalls] [dbo].[DBINT] NULL,
	[EmergencyAssists] [dbo].[DBINT] NULL,
	[InterruptedTime] [dbo].[DBINT] NULL,
	[AbandonHoldOutCalls] [dbo].[DBINT] NULL,
	[NetConsultativeCalls] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTime] [dbo].[DBINT] NULL,
	[NetConferencedOutCalls] [dbo].[DBINT] NULL,
	[NetConfOutCallsTime] [dbo].[DBINT] NULL,
	[NetTransferredOutCalls] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[ConsultOutCalls] [dbo].[DBINT] NULL,
	[ConsultOutCallsTime] [dbo].[DBINT] NULL,
	[AttributeID1] [dbo].[DBINT] NULL,
	[AttributeID2] [dbo].[DBINT] NULL,
	[AttributeID3] [dbo].[DBINT] NULL,
	[AttributeID4] [dbo].[DBINT] NULL,
	[AttributeID5] [dbo].[DBINT] NULL,
	[AttributeID6] [dbo].[DBINT] NULL,
	[AttributeID7] [dbo].[DBINT] NULL,
	[AttributeID8] [dbo].[DBINT] NULL,
	[AttributeID9] [dbo].[DBINT] NULL,
	[AttributeID10] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_Skill_Group_LogoutTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_Skill_Group_LogoutTmp1](
	[LogoutDateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LoginDuration] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_Skill_Group_LogoutTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_Skill_Group_LogoutTmp2](
	[LogoutDateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LoginDuration] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_State_TraceTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_State_TraceTmp1](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[EventName] [dbo].[DBINT] NOT NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[AgentState] [dbo].[DBINT] NULL,
	[ICRCallKey] [dbo].[DBINT] NULL,
	[PeripheralCallKey] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[Direction] [dbo].[DBINT] NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NULL,
	[RouterCallKey] [dbo].[DBINT] NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_State_TraceTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_State_TraceTmp2](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[EventName] [dbo].[DBINT] NOT NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[AgentState] [dbo].[DBINT] NULL,
	[ICRCallKey] [dbo].[DBINT] NULL,
	[PeripheralCallKey] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[Direction] [dbo].[DBINT] NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NULL,
	[RouterCallKey] [dbo].[DBINT] NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_Targeting_Rule_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agent_Targeting_Rule_Member](
	[AgentTargetingRuleID] [dbo].[DBINT] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
 CONSTRAINT [XPKAgent_Targeting_Rule_Member] PRIMARY KEY CLUSTERED 
(
	[AgentTargetingRuleID] ASC,
	[RoutingClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Agent_Targeting_Rule_Range]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Agent_Targeting_Rule_Range](
	[AgentTargetingRuleRangeID] [dbo].[DBINT] NOT NULL,
	[AgentTargetingRuleID] [dbo].[DBINT] NOT NULL,
	[LowExtension] [varchar](32) NULL,
	[HighExtension] [varchar](32) NULL,
 CONSTRAINT [XPKAgent_Targeting_Rule_Range] PRIMARY KEY CLUSTERED 
(
	[AgentTargetingRuleRangeID] ASC,
	[AgentTargetingRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Application_EventTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Application_EventTmp1](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[CentralControllerVirtualTime] [dbo].[DBINT] NOT NULL,
	[CentralControllerFileTime] [dbo].[DBDATETIME] NOT NULL,
	[CentralControllerTimeZone] [dbo].[DBINT] NOT NULL,
	[VersionNum] [dbo].[DBSMALLINT] NOT NULL,
	[SystemType] [dbo].[DBSMALLINT] NOT NULL,
	[SystemId] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCodeType] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCode] [dbo].[DBINT] NOT NULL,
	[StatusCodeString] [dbo].[DESCRIPTION] NULL,
	[ProcName] [dbo].[VNAME32] NOT NULL,
	[SourceSystemName] [dbo].[VNAME32] NULL,
	[SourceVirtualTime] [dbo].[DBINT] NOT NULL,
	[SourceFileTime] [dbo].[DBDATETIME] NOT NULL,
	[MessageId] [dbo].[DBINT] NOT NULL,
	[Severity] [varchar](16) NULL,
	[Category] [dbo].[VNAME32] NULL,
	[MessageString] [dbo].[DESCRIPTION] NULL,
	[CustomerId] [dbo].[DBINT] NOT NULL,
	[Side] [dbo].[DBCHAR] NOT NULL,
	[Dword1] [dbo].[DBINT] NULL,
	[Dword2] [dbo].[DBINT] NULL,
	[Dword3] [dbo].[DBINT] NULL,
	[Dword4] [dbo].[DBINT] NULL,
	[Dword5] [dbo].[DBINT] NULL,
	[String1] [varchar](240) NULL,
	[String2] [varchar](240) NULL,
	[String3] [varchar](240) NULL,
	[String4] [varchar](240) NULL,
	[String5] [varchar](240) NULL,
	[BinData] [image] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Application_EventTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Application_EventTmp2](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[CentralControllerVirtualTime] [dbo].[DBINT] NOT NULL,
	[CentralControllerFileTime] [dbo].[DBDATETIME] NOT NULL,
	[CentralControllerTimeZone] [dbo].[DBINT] NOT NULL,
	[VersionNum] [dbo].[DBSMALLINT] NOT NULL,
	[SystemType] [dbo].[DBSMALLINT] NOT NULL,
	[SystemId] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCodeType] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCode] [dbo].[DBINT] NOT NULL,
	[StatusCodeString] [dbo].[DESCRIPTION] NULL,
	[ProcName] [dbo].[VNAME32] NOT NULL,
	[SourceSystemName] [dbo].[VNAME32] NULL,
	[SourceVirtualTime] [dbo].[DBINT] NOT NULL,
	[SourceFileTime] [dbo].[DBDATETIME] NOT NULL,
	[MessageId] [dbo].[DBINT] NOT NULL,
	[Severity] [varchar](16) NULL,
	[Category] [dbo].[VNAME32] NULL,
	[MessageString] [dbo].[DESCRIPTION] NULL,
	[CustomerId] [dbo].[DBINT] NOT NULL,
	[Side] [dbo].[DBCHAR] NOT NULL,
	[Dword1] [dbo].[DBINT] NULL,
	[Dword2] [dbo].[DBINT] NULL,
	[Dword3] [dbo].[DBINT] NULL,
	[Dword4] [dbo].[DBINT] NULL,
	[Dword5] [dbo].[DBINT] NULL,
	[String1] [varchar](240) NULL,
	[String2] [varchar](240) NULL,
	[String3] [varchar](240) NULL,
	[String4] [varchar](240) NULL,
	[String5] [varchar](240) NULL,
	[BinData] [image] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Application_Gateway_Half_HTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application_Gateway_Half_HTmp1](
	[ApplicationGatewayID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RequestsToHalf] [dbo].[DBINT] NULL,
	[RejectsToHalf] [dbo].[DBINT] NULL,
	[TimeoutsToHalf] [dbo].[DBINT] NULL,
	[MaxDelayToHalf] [dbo].[DBINT] NULL,
	[AvgDelayToHalf] [dbo].[DBINT] NULL,
	[UnavailableToHalf] [dbo].[DBINT] NULL,
	[ErrorsToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LatesToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Application_Gateway_Half_HTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application_Gateway_Half_HTmp2](
	[ApplicationGatewayID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RequestsToHalf] [dbo].[DBINT] NULL,
	[RejectsToHalf] [dbo].[DBINT] NULL,
	[TimeoutsToHalf] [dbo].[DBINT] NULL,
	[MaxDelayToHalf] [dbo].[DBINT] NULL,
	[AvgDelayToHalf] [dbo].[DBINT] NULL,
	[UnavailableToHalf] [dbo].[DBINT] NULL,
	[ErrorsToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LatesToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Blended_Agent_Options]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Blended_Agent_Options](
	[DialStartHours] [dbo].[DBINT] NOT NULL,
	[DialStartMinutes] [dbo].[DBINT] NOT NULL,
	[DialEndHours] [dbo].[DBINT] NOT NULL,
	[DialEndMinutes] [dbo].[DBINT] NOT NULL,
	[IPDirectDialPreview] [dbo].[DBCHAR] NOT NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
	[CPAAnalysisPeriod] [dbo].[DBINT] NULL,
	[CPAMinSilencePeriod] [dbo].[DBINT] NULL,
	[CPAMaxTimeAnalysis] [dbo].[DBINT] NULL,
	[CPAMinimumValidSpeechTime] [dbo].[DBINT] NULL,
	[CPAMaxTermToneAnalysis] [dbo].[DBINT] NULL,
	[CPAJitterBufferDelay] [dbo].[DBINT] NULL,
	[RescheduleCallbacks] [dbo].[DBCHAR] NOT NULL,
	[PcbMode] [dbo].[DBINT] NULL,
	[PcbBusyRetry] [dbo].[DBINT] NULL,
	[PcbNoAnswerRetry] [dbo].[DBINT] NULL,
	[PcbReserveRetry] [dbo].[DBINT] NULL,
	[PcbMaxAttempts] [dbo].[DBINT] NULL,
	[PcbCheckRecords] [dbo].[DBINT] NULL,
	[PcbPurgeRecords] [dbo].[DBINT] NULL,
	[PcbRecordsToCache] [dbo].[DBINT] NULL,
	[PcbNoAnswerRingLimit] [dbo].[DBINT] NULL,
	[PcbAllowedSaturday] [dbo].[DBCHAR] NOT NULL,
	[PcbAllowedSunday] [dbo].[DBCHAR] NOT NULL,
	[PcbPurgeStatus] [varchar](64) NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Call_Type_Half_HourTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call_Type_Half_HourTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[RouterQueueWaitTimeToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[AvgRouterDelayQToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallTypeLimitToHalf] [dbo].[DBINT] NULL,
	[RouterQueueGlobalLimitToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToHalf] [dbo].[DBINT] NULL,
	[ErrorCountToHalf] [dbo].[DBINT] NULL,
	[ICRDefaultRoutedToHalf] [dbo].[DBINT] NULL,
	[NetworkDefaultRoutedToHalf] [dbo].[DBINT] NULL,
	[ReturnBusyToHalf] [dbo].[DBINT] NULL,
	[ReturnRingToHalf] [dbo].[DBINT] NULL,
	[NetworkAnnouncementToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeHalf] [dbo].[DBINT] NULL,
	[CallsHandledHalf] [dbo].[DBINT] NULL,
	[CallsOfferedHalf] [dbo].[DBINT] NULL,
	[HandleTimeHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedHalf] [dbo].[DBINT] NULL,
	[ServiceLevelHalf] [dbo].[DBFLT4] NULL,
	[TalkTimeHalf] [dbo].[DBINT] NULL,
	[OverflowOutHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncompleteCallsHalf] [dbo].[DBINT] NULL,
	[ShortCallsHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgentToHalf] [dbo].[DBINT] NULL,
	[CallsRONAToHalf] [dbo].[DBINT] NULL,
	[ReturnReleaseToHalf] [dbo].[DBINT] NULL,
	[CallsQHandledToHalf] [dbo].[DBINT] NULL,
	[VruUnhandledCallsToHalf] [dbo].[DBINT] NULL,
	[VruHandledCallsToHalf] [dbo].[DBINT] NULL,
	[VruAssistedCallsToHalf] [dbo].[DBINT] NULL,
	[VruOptOutUnhandledCallsToHalf] [dbo].[DBINT] NULL,
	[VruScriptedXferredCallsToHalf] [dbo].[DBINT] NULL,
	[VruForcedXferredCallsToHalf] [dbo].[DBINT] NULL,
	[VruOtherCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[CallsRequeriedToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsAbandToAgentToHalf] [dbo].[DBINT] NULL,
	[TotalCallsAbandToHalf] [dbo].[DBINT] NULL,
	[DelayAgentAbandTimeToHalf] [dbo].[DBINT] NULL,
	[CallDelayAbandTimeToHalf] [dbo].[DBINT] NULL,
	[CTDelayAbandTimeToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelRONAToHalf] [dbo].[DBINT] NULL,
	[AgentErrorCountToHalf] [dbo].[DBINT] NULL,
	[VRUTimeToHalf] [dbo].[DBINT] NULL,
	[CTVRUTimeToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[MaxHoldTimeToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Call_Type_Half_HourTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call_Type_Half_HourTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[RouterQueueWaitTimeToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[AvgRouterDelayQToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallTypeLimitToHalf] [dbo].[DBINT] NULL,
	[RouterQueueGlobalLimitToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToHalf] [dbo].[DBINT] NULL,
	[ErrorCountToHalf] [dbo].[DBINT] NULL,
	[ICRDefaultRoutedToHalf] [dbo].[DBINT] NULL,
	[NetworkDefaultRoutedToHalf] [dbo].[DBINT] NULL,
	[ReturnBusyToHalf] [dbo].[DBINT] NULL,
	[ReturnRingToHalf] [dbo].[DBINT] NULL,
	[NetworkAnnouncementToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeHalf] [dbo].[DBINT] NULL,
	[CallsHandledHalf] [dbo].[DBINT] NULL,
	[CallsOfferedHalf] [dbo].[DBINT] NULL,
	[HandleTimeHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedHalf] [dbo].[DBINT] NULL,
	[ServiceLevelHalf] [dbo].[DBFLT4] NULL,
	[TalkTimeHalf] [dbo].[DBINT] NULL,
	[OverflowOutHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncompleteCallsHalf] [dbo].[DBINT] NULL,
	[ShortCallsHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgentToHalf] [dbo].[DBINT] NULL,
	[CallsRONAToHalf] [dbo].[DBINT] NULL,
	[ReturnReleaseToHalf] [dbo].[DBINT] NULL,
	[CallsQHandledToHalf] [dbo].[DBINT] NULL,
	[VruUnhandledCallsToHalf] [dbo].[DBINT] NULL,
	[VruHandledCallsToHalf] [dbo].[DBINT] NULL,
	[VruAssistedCallsToHalf] [dbo].[DBINT] NULL,
	[VruOptOutUnhandledCallsToHalf] [dbo].[DBINT] NULL,
	[VruScriptedXferredCallsToHalf] [dbo].[DBINT] NULL,
	[VruForcedXferredCallsToHalf] [dbo].[DBINT] NULL,
	[VruOtherCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[CallsRequeriedToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsAbandToAgentToHalf] [dbo].[DBINT] NULL,
	[TotalCallsAbandToHalf] [dbo].[DBINT] NULL,
	[DelayAgentAbandTimeToHalf] [dbo].[DBINT] NULL,
	[CallDelayAbandTimeToHalf] [dbo].[DBINT] NULL,
	[CTDelayAbandTimeToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelRONAToHalf] [dbo].[DBINT] NULL,
	[AgentErrorCountToHalf] [dbo].[DBINT] NULL,
	[VRUTimeToHalf] [dbo].[DBINT] NULL,
	[CTVRUTimeToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[MaxHoldTimeToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Call_Type_IntervalTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call_Type_IntervalTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[RouterQueueWaitTime] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[AvgRouterDelayQ] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterQueueCallTypeLimit] [dbo].[DBINT] NULL,
	[RouterQueueGlobalLimit] [dbo].[DBINT] NULL,
	[CallsRouted] [dbo].[DBINT] NULL,
	[ErrorCount] [dbo].[DBINT] NULL,
	[ICRDefaultRouted] [dbo].[DBINT] NULL,
	[NetworkDefaultRouted] [dbo].[DBINT] NULL,
	[ReturnBusy] [dbo].[DBINT] NULL,
	[ReturnRing] [dbo].[DBINT] NULL,
	[NetworkAnnouncement] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[HandleTime] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[OverflowOut] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[IncompleteCalls] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgent] [dbo].[DBINT] NULL,
	[CallsRONA] [dbo].[DBINT] NULL,
	[ReturnRelease] [dbo].[DBINT] NULL,
	[CallsQHandled] [dbo].[DBINT] NULL,
	[VruUnhandledCalls] [dbo].[DBINT] NULL,
	[VruHandledCalls] [dbo].[DBINT] NULL,
	[VruAssistedCalls] [dbo].[DBINT] NULL,
	[VruOptOutUnhandledCalls] [dbo].[DBINT] NULL,
	[VruScriptedXferredCalls] [dbo].[DBINT] NULL,
	[VruForcedXferredCalls] [dbo].[DBINT] NULL,
	[VruOtherCalls] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[CallsRequeried] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsAbandToAgent] [dbo].[DBINT] NULL,
	[TotalCallsAband] [dbo].[DBINT] NULL,
	[DelayAgentAbandTime] [dbo].[DBINT] NULL,
	[CallDelayAbandTime] [dbo].[DBINT] NULL,
	[CTDelayAbandTime] [dbo].[DBINT] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[AgentErrorCount] [dbo].[DBINT] NULL,
	[VRUTime] [dbo].[DBINT] NULL,
	[CTVRUTime] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CallsOnHold] [dbo].[DBINT] NULL,
	[MaxHoldTime] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[MaxCallWaitTime] [dbo].[DBINT] NULL,
	[MaxCallsQueued] [dbo].[DBINT] NULL,
	[ReservationCalls] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Call_Type_IntervalTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call_Type_IntervalTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[RouterQueueWaitTime] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[AvgRouterDelayQ] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterQueueCallTypeLimit] [dbo].[DBINT] NULL,
	[RouterQueueGlobalLimit] [dbo].[DBINT] NULL,
	[CallsRouted] [dbo].[DBINT] NULL,
	[ErrorCount] [dbo].[DBINT] NULL,
	[ICRDefaultRouted] [dbo].[DBINT] NULL,
	[NetworkDefaultRouted] [dbo].[DBINT] NULL,
	[ReturnBusy] [dbo].[DBINT] NULL,
	[ReturnRing] [dbo].[DBINT] NULL,
	[NetworkAnnouncement] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[HandleTime] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[OverflowOut] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[IncompleteCalls] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgent] [dbo].[DBINT] NULL,
	[CallsRONA] [dbo].[DBINT] NULL,
	[ReturnRelease] [dbo].[DBINT] NULL,
	[CallsQHandled] [dbo].[DBINT] NULL,
	[VruUnhandledCalls] [dbo].[DBINT] NULL,
	[VruHandledCalls] [dbo].[DBINT] NULL,
	[VruAssistedCalls] [dbo].[DBINT] NULL,
	[VruOptOutUnhandledCalls] [dbo].[DBINT] NULL,
	[VruScriptedXferredCalls] [dbo].[DBINT] NULL,
	[VruForcedXferredCalls] [dbo].[DBINT] NULL,
	[VruOtherCalls] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[CallsRequeried] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsAbandToAgent] [dbo].[DBINT] NULL,
	[TotalCallsAband] [dbo].[DBINT] NULL,
	[DelayAgentAbandTime] [dbo].[DBINT] NULL,
	[CallDelayAbandTime] [dbo].[DBINT] NULL,
	[CTDelayAbandTime] [dbo].[DBINT] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[AgentErrorCount] [dbo].[DBINT] NULL,
	[VRUTime] [dbo].[DBINT] NULL,
	[CTVRUTime] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CallsOnHold] [dbo].[DBINT] NULL,
	[MaxHoldTime] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[MaxCallWaitTime] [dbo].[DBINT] NULL,
	[MaxCallsQueued] [dbo].[DBINT] NULL,
	[ReservationCalls] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Call_Type_SG_Half_HourTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call_Type_SG_Half_HourTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvgRouterDelayQToHalf] [dbo].[DBINT] NULL,
	[CallDelayAbandTimeToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[CallsReportAgainstOtherToHalf] [dbo].[DBINT] NULL,
	[CallsQHandledToHalf] [dbo].[DBINT] NULL,
	[CallsRONAToHalf] [dbo].[DBINT] NULL,
	[CallsRequeriedToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgentToHalf] [dbo].[DBINT] NULL,
	[CallsHandledNotRoutedToHalf] [dbo].[DBINT] NULL,
	[DelayAgentAbandTimeToHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeToHalf] [dbo].[DBINT] NULL,
	[HandleTimeToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncompleteCallsToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedRoutedToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedNotRoutedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgentToHalf] [dbo].[DBINT] NULL,
	[RouterQueueWaitTimeToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[RouterCallsDequeuedToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[AgentErrorCountToHalf] [dbo].[DBINT] NULL,
	[ErrorCountToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelRONAToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeueToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[CallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeuedToHalf] [dbo].[DBINT] NULL,
	[MaxHoldTimeToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[OverflowOutToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Call_Type_SG_Half_HourTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call_Type_SG_Half_HourTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvgRouterDelayQToHalf] [dbo].[DBINT] NULL,
	[CallDelayAbandTimeToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[CallsReportAgainstOtherToHalf] [dbo].[DBINT] NULL,
	[CallsQHandledToHalf] [dbo].[DBINT] NULL,
	[CallsRONAToHalf] [dbo].[DBINT] NULL,
	[CallsRequeriedToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgentToHalf] [dbo].[DBINT] NULL,
	[CallsHandledNotRoutedToHalf] [dbo].[DBINT] NULL,
	[DelayAgentAbandTimeToHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeToHalf] [dbo].[DBINT] NULL,
	[HandleTimeToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncompleteCallsToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedRoutedToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedNotRoutedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgentToHalf] [dbo].[DBINT] NULL,
	[RouterQueueWaitTimeToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[RouterCallsDequeuedToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[AgentErrorCountToHalf] [dbo].[DBINT] NULL,
	[ErrorCountToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelRONAToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeueToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[CallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeuedToHalf] [dbo].[DBINT] NULL,
	[MaxHoldTimeToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[OverflowOutToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Call_Type_SG_IntervalTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call_Type_SG_IntervalTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AvgRouterDelayQ] [dbo].[DBINT] NULL,
	[CallDelayAbandTime] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[CallsReportAgainstOther] [dbo].[DBINT] NULL,
	[CallsQHandled] [dbo].[DBINT] NULL,
	[CallsRONA] [dbo].[DBINT] NULL,
	[CallsRequeried] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgent] [dbo].[DBINT] NULL,
	[CallsHandledNotRouted] [dbo].[DBINT] NULL,
	[DelayAgentAbandTime] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[HandleTime] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[IncompleteCalls] [dbo].[DBINT] NULL,
	[CallsOfferedRouted] [dbo].[DBINT] NULL,
	[CallsOfferedNotRouted] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgent] [dbo].[DBINT] NULL,
	[RouterQueueWaitTime] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[RouterCallsDequeued] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[AgentErrorCount] [dbo].[DBINT] NULL,
	[ErrorCount] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeue] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[CallsOnHold] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeued] [dbo].[DBINT] NULL,
	[MaxHoldTime] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[OverflowOut] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[MaxCallWaitTime] [dbo].[DBINT] NULL,
	[MaxCallsQueued] [dbo].[DBINT] NULL,
	[ReservationCalls] [dbo].[DBINT] NULL,
	[AttributeID1] [dbo].[DBINT] NULL,
	[AttributeID2] [dbo].[DBINT] NULL,
	[AttributeID3] [dbo].[DBINT] NULL,
	[AttributeID4] [dbo].[DBINT] NULL,
	[AttributeID5] [dbo].[DBINT] NULL,
	[AttributeID6] [dbo].[DBINT] NULL,
	[AttributeID7] [dbo].[DBINT] NULL,
	[AttributeID8] [dbo].[DBINT] NULL,
	[AttributeID9] [dbo].[DBINT] NULL,
	[AttributeID10] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Call_Type_SG_IntervalTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call_Type_SG_IntervalTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AvgRouterDelayQ] [dbo].[DBINT] NULL,
	[CallDelayAbandTime] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[CallsReportAgainstOther] [dbo].[DBINT] NULL,
	[CallsQHandled] [dbo].[DBINT] NULL,
	[CallsRONA] [dbo].[DBINT] NULL,
	[CallsRequeried] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgent] [dbo].[DBINT] NULL,
	[CallsHandledNotRouted] [dbo].[DBINT] NULL,
	[DelayAgentAbandTime] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[HandleTime] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[IncompleteCalls] [dbo].[DBINT] NULL,
	[CallsOfferedRouted] [dbo].[DBINT] NULL,
	[CallsOfferedNotRouted] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgent] [dbo].[DBINT] NULL,
	[RouterQueueWaitTime] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[RouterCallsDequeued] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[AgentErrorCount] [dbo].[DBINT] NULL,
	[ErrorCount] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeue] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[CallsOnHold] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeued] [dbo].[DBINT] NULL,
	[MaxHoldTime] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[OverflowOut] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[MaxCallWaitTime] [dbo].[DBINT] NULL,
	[MaxCallsQueued] [dbo].[DBINT] NULL,
	[ReservationCalls] [dbo].[DBINT] NULL,
	[AttributeID1] [dbo].[DBINT] NULL,
	[AttributeID2] [dbo].[DBINT] NULL,
	[AttributeID3] [dbo].[DBINT] NULL,
	[AttributeID4] [dbo].[DBINT] NULL,
	[AttributeID5] [dbo].[DBINT] NULL,
	[AttributeID6] [dbo].[DBINT] NULL,
	[AttributeID7] [dbo].[DBINT] NULL,
	[AttributeID8] [dbo].[DBINT] NULL,
	[AttributeID9] [dbo].[DBINT] NULL,
	[AttributeID10] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Campaign_Half_HourTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign_Half_HourTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActiveTimeToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Campaign_Half_HourTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign_Half_HourTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActiveTimeToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Campaign_Query_Rule_Half_HTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign_Query_Rule_Half_HTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[QueryRuleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsAttemptedToHalf] [dbo].[DBINT] NULL,
	[VoiceDetectToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[WrapupTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[BusyDetectToHalf] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectToHalf] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectToHalf] [dbo].[DBINT] NULL,
	[SITToneDetectToHalf] [dbo].[DBINT] NULL,
	[NoAnswerDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonDetectToHalf] [dbo].[DBINT] NULL,
	[CancelledDetectToHalf] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonToIVRToHalf] [dbo].[DBINT] NULL,
	[NoRingBackDetectToHalf] [dbo].[DBINT] NULL,
	[NoDialToneDetectToHalf] [dbo].[DBINT] NULL,
	[FaxDetectToHalf] [dbo].[DBINT] NULL,
	[AgentRejectedDetectToHalf] [dbo].[DBINT] NULL,
	[AgentClosedDetectToHalf] [dbo].[DBINT] NULL,
	[WrongNumberCountToHalf] [dbo].[DBINT] NULL,
	[CustomerNotHomeCountToHalf] [dbo].[DBINT] NULL,
	[PersonalCallbackCountToHalf] [dbo].[DBINT] NULL,
	[CallbackCountToHalf] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[QueryRuleActiveTimeToHalf] [dbo].[DBINT] NULL,
	[CampaignOutOfNumbersToHalf] [dbo].[DBINT] NULL,
	[LowNoiseVolumeToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Campaign_Query_Rule_Half_HTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign_Query_Rule_Half_HTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[QueryRuleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsAttemptedToHalf] [dbo].[DBINT] NULL,
	[VoiceDetectToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[WrapupTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[BusyDetectToHalf] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectToHalf] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectToHalf] [dbo].[DBINT] NULL,
	[SITToneDetectToHalf] [dbo].[DBINT] NULL,
	[NoAnswerDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonDetectToHalf] [dbo].[DBINT] NULL,
	[CancelledDetectToHalf] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonToIVRToHalf] [dbo].[DBINT] NULL,
	[NoRingBackDetectToHalf] [dbo].[DBINT] NULL,
	[NoDialToneDetectToHalf] [dbo].[DBINT] NULL,
	[FaxDetectToHalf] [dbo].[DBINT] NULL,
	[AgentRejectedDetectToHalf] [dbo].[DBINT] NULL,
	[AgentClosedDetectToHalf] [dbo].[DBINT] NULL,
	[WrongNumberCountToHalf] [dbo].[DBINT] NULL,
	[CustomerNotHomeCountToHalf] [dbo].[DBINT] NULL,
	[PersonalCallbackCountToHalf] [dbo].[DBINT] NULL,
	[CallbackCountToHalf] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[QueryRuleActiveTimeToHalf] [dbo].[DBINT] NULL,
	[CampaignOutOfNumbersToHalf] [dbo].[DBINT] NULL,
	[LowNoiseVolumeToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Campaign_Query_Rule_IntervTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign_Query_Rule_IntervTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[QueryRuleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsAttempted] [dbo].[DBINT] NULL,
	[VoiceDetect] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[WrapupTime] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[BusyDetect] [dbo].[DBINT] NULL,
	[AnsweringMachineDetect] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetect] [dbo].[DBINT] NULL,
	[SITToneDetect] [dbo].[DBINT] NULL,
	[NoAnswerDetect] [dbo].[DBINT] NULL,
	[AbandonDetect] [dbo].[DBINT] NULL,
	[CancelledDetect] [dbo].[DBINT] NULL,
	[CustomerAbandonDetect] [dbo].[DBINT] NULL,
	[AbandonToIVR] [dbo].[DBINT] NULL,
	[NoRingBackDetect] [dbo].[DBINT] NULL,
	[NoDialToneDetect] [dbo].[DBINT] NULL,
	[FaxDetect] [dbo].[DBINT] NULL,
	[AgentRejectedDetect] [dbo].[DBINT] NULL,
	[AgentClosedDetect] [dbo].[DBINT] NULL,
	[WrongNumberCount] [dbo].[DBINT] NULL,
	[CustomerNotHomeCount] [dbo].[DBINT] NULL,
	[PersonalCallbackCount] [dbo].[DBINT] NULL,
	[CallbackCount] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[QueryRuleActiveTime] [dbo].[DBINT] NULL,
	[CampaignOutOfNumbers] [dbo].[DBINT] NULL,
	[LowNoiseVolume] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Campaign_Query_Rule_IntervTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campaign_Query_Rule_IntervTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[QueryRuleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsAttempted] [dbo].[DBINT] NULL,
	[VoiceDetect] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[WrapupTime] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[BusyDetect] [dbo].[DBINT] NULL,
	[AnsweringMachineDetect] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetect] [dbo].[DBINT] NULL,
	[SITToneDetect] [dbo].[DBINT] NULL,
	[NoAnswerDetect] [dbo].[DBINT] NULL,
	[AbandonDetect] [dbo].[DBINT] NULL,
	[CancelledDetect] [dbo].[DBINT] NULL,
	[CustomerAbandonDetect] [dbo].[DBINT] NULL,
	[AbandonToIVR] [dbo].[DBINT] NULL,
	[NoRingBackDetect] [dbo].[DBINT] NULL,
	[NoDialToneDetect] [dbo].[DBINT] NULL,
	[FaxDetect] [dbo].[DBINT] NULL,
	[AgentRejectedDetect] [dbo].[DBINT] NULL,
	[AgentClosedDetect] [dbo].[DBINT] NULL,
	[WrongNumberCount] [dbo].[DBINT] NULL,
	[CustomerNotHomeCount] [dbo].[DBINT] NULL,
	[PersonalCallbackCount] [dbo].[DBINT] NULL,
	[CallbackCount] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[QueryRuleActiveTime] [dbo].[DBINT] NULL,
	[CampaignOutOfNumbers] [dbo].[DBINT] NULL,
	[LowNoiseVolume] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cfg_Mngr_App_Snapshot_State]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cfg_Mngr_App_Snapshot_State](
	[DesktopSnapShotID] [dbo].[DBINT] NOT NULL,
	[ApplicationID] [dbo].[DBINT] NOT NULL,
	[Filter1] [dbo].[DBINT] NULL,
	[Filter2] [dbo].[DBINT] NULL,
	[Filter3FieldName] [dbo].[VNAME32] NULL,
	[Filter3FieldType] [dbo].[DBSMALLINT] NULL,
	[Filter3OptionSelection] [dbo].[DBSMALLINT] NULL,
	[Filter3Selection] [varchar](255) NULL,
	[POSX] [dbo].[DBSMALLINT] NULL,
	[POSY] [dbo].[DBSMALLINT] NULL,
	[ApplicationOpen] [dbo].[DBCHAR] NOT NULL,
 CONSTRAINT [XPKCfg_Mngr_App_Snapshot_State] PRIMARY KEY CLUSTERED 
(
	[DesktopSnapShotID] ASC,
	[ApplicationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cfg_Mngr_Globals]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cfg_Mngr_Globals](
	[VersionID] [dbo].[DBINT] NOT NULL,
	[Version] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKCfg_Mngr_Globals] PRIMARY KEY CLUSTERED 
(
	[VersionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cfg_Mngr_User_Desktop_Snap]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cfg_Mngr_User_Desktop_Snap](
	[DesktopSnapShotID] [dbo].[DBINT] NOT NULL,
	[UserSettingsID] [dbo].[DBINT] NOT NULL,
	[MenuID] [dbo].[DBINT] NULL,
	[DesktopSnapShotName] [varchar](128) NOT NULL,
	[SaveApplicationPositions] [dbo].[DBCHAR] NOT NULL,
	[SaveFilterData] [dbo].[DBCHAR] NOT NULL,
	[AllowMultipleAppInstances] [dbo].[DBCHAR] NOT NULL,
	[OpenAppsOnLoad] [dbo].[DBCHAR] NOT NULL,
	[AutoRetrieve] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKCfg_Mngr_User_Desktop_Snap] PRIMARY KEY CLUSTERED 
(
	[DesktopSnapShotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cfg_Mngr_User_Menu]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cfg_Mngr_User_Menu](
	[MenuID] [dbo].[DBINT] NOT NULL,
	[MenuName] [dbo].[VNAME32] NOT NULL,
	[DesktopSnapShotID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKCfg_Mngr_User_Menu] PRIMARY KEY CLUSTERED 
(
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cfg_Mngr_User_Settings]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cfg_Mngr_User_Settings](
	[UserSettingsID] [dbo].[DBINT] NOT NULL,
	[LoginName] [varchar](128) NOT NULL,
	[SaveSnapShotOnExit] [dbo].[DBCHAR] NOT NULL,
	[LastDesktopSnapShotID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKCfg_Mngr_User_Settings] PRIMARY KEY CLUSTERED 
(
	[UserSettingsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Cfg_Mngr_User_Settings] UNIQUE NONCLUSTERED 
(
	[LoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cfg_Mngr_View]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cfg_Mngr_View](
	[NodeID] [dbo].[DBINT] NOT NULL,
	[MenuID] [dbo].[DBINT] NOT NULL,
	[ApplicationID] [dbo].[DBINT] NULL,
	[PeerNodeID] [dbo].[DBINT] NULL,
	[ChildNodeID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKCfg_Mngr_View] PRIMARY KEY NONCLUSTERED 
(
	[NodeID] ASC,
	[MenuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Config_Message_Log]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Config_Message_Log](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LogOperation] [dbo].[VNAME32] NULL,
	[TableName] [dbo].[VNAME32] NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[ConfigMessage] [image] NULL,
 CONSTRAINT [XPKConfig_Message_Log] PRIMARY KEY CLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Controller_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Controller_Time](
	[NowTime] [dbo].[DBDATETIME] NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[TimeZoneName] [dbo].[DESCRIPTION] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dialer_DetailTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dialer_DetailTmp1](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[CustomerTimeZone] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[CallResult] [dbo].[DBINT] NULL,
	[CallResultDetail] [dbo].[DBINT] NULL,
	[CallStatusZone1] [char](1) NULL,
	[CallStatusZone2] [char](1) NULL,
	[QueryRuleID] [dbo].[DBINT] NULL,
	[DialingListID] [dbo].[DBINT] NULL,
	[Phone] [varchar](20) NULL,
	[PhoneExt] [varchar](8) NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[PhoneIndex] [dbo].[DBINT] NULL,
	[PhoneID] [dbo].[DBINT] NULL,
	[ZoneIndex] [dbo].[DBSMALLINT] NULL,
	[AgentPeripheralNumber] [varchar](32) NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NULL,
	[PeripheralCallKey] [dbo].[DBINT] NULL,
	[CallDuration] [dbo].[DBINT] NULL,
	[AccountNumber] [varchar](128) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[CallbackPhone] [varchar](20) NULL,
	[CallbackDateTime] [dbo].[DBSMALLDATE] NULL,
	[DialingMode] [dbo].[DBINT] NULL,
	[DialerID] [dbo].[DBINT] NULL,
	[PortNumber] [dbo].[DBINT] NULL,
	[ImportRuleDateTime] [dbo].[DBDATETIME] NULL,
	[InternalUse1] [dbo].[DBINT] NULL,
	[InternalUse2] [dbo].[DBINT] NULL,
	[InternalUse3] [dbo].[DBINT] NULL,
	[InternalUse4] [dbo].[DBINT] NULL,
	[InternalUse5] [dbo].[DBINT] NULL,
	[InternalUse6] [dbo].[DBINT] NULL,
	[InternalUse7] [dbo].[DBINT] NULL,
	[InternalUse8] [dbo].[DBINT] NULL,
	[InternalUse9] [dbo].[DBINT] NULL,
	[InternalUse10] [dbo].[DBINT] NULL,
	[InternalUse11] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseInt6] [dbo].[DBINT] NULL,
	[FutureUseInt7] [dbo].[DBINT] NULL,
	[FutureUseInt8] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
	[FutureUseVarchar4] [varchar](64) NULL,
	[RouterCallKey] [dbo].[DBINT] NULL,
	[CallGUID] [varchar](32) NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NULL,
	[WrapupData] [varchar](40) NULL,
	[PickupTime] [dbo].[DBINT] NULL,
	[MaxActiveGlitchTime] [dbo].[DBINT] NULL,
	[NumOfActiveGlitches] [dbo].[DBINT] NULL,
	[ValidSpeechTime] [dbo].[DBINT] NULL,
	[MaxPostSpeechSilenceGlitchTime] [dbo].[DBINT] NULL,
	[NumOfPostSpeechSilenceGlitches] [dbo].[DBINT] NULL,
	[SilencePeriod] [dbo].[DBINT] NULL,
	[TermToneDetectionTime] [dbo].[DBINT] NULL,
	[MaxZCRstdev] [dbo].[DBINT] NULL,
	[NoiseThreshold] [dbo].[DBINT] NULL,
	[ActiveThreshold] [dbo].[DBINT] NULL,
	[ReservationCallDuration] [dbo].[DBINT] NULL,
	[PreviewTime] [dbo].[DBINT] NULL,
	[CampaignReportingDateTime] [dbo].[DBDATETIME] NULL,
	[ProtocolID] [dbo].[DBINT] NULL,
	[IdleTime] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dialer_DetailTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dialer_DetailTmp2](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[CustomerTimeZone] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[CallResult] [dbo].[DBINT] NULL,
	[CallResultDetail] [dbo].[DBINT] NULL,
	[CallStatusZone1] [char](1) NULL,
	[CallStatusZone2] [char](1) NULL,
	[QueryRuleID] [dbo].[DBINT] NULL,
	[DialingListID] [dbo].[DBINT] NULL,
	[Phone] [varchar](20) NULL,
	[PhoneExt] [varchar](8) NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[PhoneIndex] [dbo].[DBINT] NULL,
	[PhoneID] [dbo].[DBINT] NULL,
	[ZoneIndex] [dbo].[DBSMALLINT] NULL,
	[AgentPeripheralNumber] [varchar](32) NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NULL,
	[PeripheralCallKey] [dbo].[DBINT] NULL,
	[CallDuration] [dbo].[DBINT] NULL,
	[AccountNumber] [varchar](128) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[CallbackPhone] [varchar](20) NULL,
	[CallbackDateTime] [dbo].[DBSMALLDATE] NULL,
	[DialingMode] [dbo].[DBINT] NULL,
	[DialerID] [dbo].[DBINT] NULL,
	[PortNumber] [dbo].[DBINT] NULL,
	[ImportRuleDateTime] [dbo].[DBDATETIME] NULL,
	[InternalUse1] [dbo].[DBINT] NULL,
	[InternalUse2] [dbo].[DBINT] NULL,
	[InternalUse3] [dbo].[DBINT] NULL,
	[InternalUse4] [dbo].[DBINT] NULL,
	[InternalUse5] [dbo].[DBINT] NULL,
	[InternalUse6] [dbo].[DBINT] NULL,
	[InternalUse7] [dbo].[DBINT] NULL,
	[InternalUse8] [dbo].[DBINT] NULL,
	[InternalUse9] [dbo].[DBINT] NULL,
	[InternalUse10] [dbo].[DBINT] NULL,
	[InternalUse11] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseInt6] [dbo].[DBINT] NULL,
	[FutureUseInt7] [dbo].[DBINT] NULL,
	[FutureUseInt8] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
	[FutureUseVarchar4] [varchar](64) NULL,
	[RouterCallKey] [dbo].[DBINT] NULL,
	[CallGUID] [varchar](32) NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NULL,
	[WrapupData] [varchar](40) NULL,
	[PickupTime] [dbo].[DBINT] NULL,
	[MaxActiveGlitchTime] [dbo].[DBINT] NULL,
	[NumOfActiveGlitches] [dbo].[DBINT] NULL,
	[ValidSpeechTime] [dbo].[DBINT] NULL,
	[MaxPostSpeechSilenceGlitchTime] [dbo].[DBINT] NULL,
	[NumOfPostSpeechSilenceGlitches] [dbo].[DBINT] NULL,
	[SilencePeriod] [dbo].[DBINT] NULL,
	[TermToneDetectionTime] [dbo].[DBINT] NULL,
	[MaxZCRstdev] [dbo].[DBINT] NULL,
	[NoiseThreshold] [dbo].[DBINT] NULL,
	[ActiveThreshold] [dbo].[DBINT] NULL,
	[ReservationCallDuration] [dbo].[DBINT] NULL,
	[PreviewTime] [dbo].[DBINT] NULL,
	[CampaignReportingDateTime] [dbo].[DBDATETIME] NULL,
	[ProtocolID] [dbo].[DBINT] NULL,
	[IdleTime] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dialer_Half_HourTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dialer_Half_HourTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[DialerID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsDialedToHalf] [dbo].[DBINT] NULL,
	[BusyDetectToHalf] [dbo].[DBINT] NULL,
	[VoiceDetectToHalf] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectToHalf] [dbo].[DBINT] NULL,
	[SITToneDetectToHalf] [dbo].[DBINT] NULL,
	[NoAnswerDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonDetectToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[NoRingBackDetectToHalf] [dbo].[DBINT] NULL,
	[NoDialToneDetectToHalf] [dbo].[DBINT] NULL,
	[FaxDetectToHalf] [dbo].[DBINT] NULL,
	[CancelledDetectToHalf] [dbo].[DBINT] NULL,
	[AgentRejectedDetectToHalf] [dbo].[DBINT] NULL,
	[AgentClosedDetectToHalf] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonToIVRToHalf] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectToHalf] [dbo].[DBINT] NULL,
	[WrongNumberCountToHalf] [dbo].[DBINT] NULL,
	[CustomerNotHomeCountToHalf] [dbo].[DBINT] NULL,
	[PersonalCallbackCountToHalf] [dbo].[DBINT] NULL,
	[CallbackCountToHalf] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[IdlePortTimeToHalf] [dbo].[DBINT] NULL,
	[ReservePortTimeToHalf] [dbo].[DBINT] NULL,
	[DialingTimeToHalf] [dbo].[DBINT] NULL,
	[AllPortsBusyCountToHalf] [dbo].[DBINT] NULL,
	[LowNoiseVolumeToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dialer_Half_HourTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dialer_Half_HourTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[DialerID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsDialedToHalf] [dbo].[DBINT] NULL,
	[BusyDetectToHalf] [dbo].[DBINT] NULL,
	[VoiceDetectToHalf] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectToHalf] [dbo].[DBINT] NULL,
	[SITToneDetectToHalf] [dbo].[DBINT] NULL,
	[NoAnswerDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonDetectToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[NoRingBackDetectToHalf] [dbo].[DBINT] NULL,
	[NoDialToneDetectToHalf] [dbo].[DBINT] NULL,
	[FaxDetectToHalf] [dbo].[DBINT] NULL,
	[CancelledDetectToHalf] [dbo].[DBINT] NULL,
	[AgentRejectedDetectToHalf] [dbo].[DBINT] NULL,
	[AgentClosedDetectToHalf] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonToIVRToHalf] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectToHalf] [dbo].[DBINT] NULL,
	[WrongNumberCountToHalf] [dbo].[DBINT] NULL,
	[CustomerNotHomeCountToHalf] [dbo].[DBINT] NULL,
	[PersonalCallbackCountToHalf] [dbo].[DBINT] NULL,
	[CallbackCountToHalf] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[IdlePortTimeToHalf] [dbo].[DBINT] NULL,
	[ReservePortTimeToHalf] [dbo].[DBINT] NULL,
	[DialingTimeToHalf] [dbo].[DBINT] NULL,
	[AllPortsBusyCountToHalf] [dbo].[DBINT] NULL,
	[LowNoiseVolumeToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dialer_IntervalTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dialer_IntervalTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[DialerID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsDialed] [dbo].[DBINT] NULL,
	[BusyDetect] [dbo].[DBINT] NULL,
	[VoiceDetect] [dbo].[DBINT] NULL,
	[AnsweringMachineDetect] [dbo].[DBINT] NULL,
	[SITToneDetect] [dbo].[DBINT] NULL,
	[NoAnswerDetect] [dbo].[DBINT] NULL,
	[AbandonDetect] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[NoRingBackDetect] [dbo].[DBINT] NULL,
	[NoDialToneDetect] [dbo].[DBINT] NULL,
	[FaxDetect] [dbo].[DBINT] NULL,
	[CancelledDetect] [dbo].[DBINT] NULL,
	[AgentRejectedDetect] [dbo].[DBINT] NULL,
	[AgentClosedDetect] [dbo].[DBINT] NULL,
	[CustomerAbandonDetect] [dbo].[DBINT] NULL,
	[AbandonToIVR] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetect] [dbo].[DBINT] NULL,
	[WrongNumberCount] [dbo].[DBINT] NULL,
	[CustomerNotHomeCount] [dbo].[DBINT] NULL,
	[PersonalCallbackCount] [dbo].[DBINT] NULL,
	[CallbackCount] [dbo].[DBINT] NULL,
	[ReservationCallAttempts] [dbo].[DBINT] NULL,
	[AllPortsBusyTime] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[IdlePortTime] [dbo].[DBINT] NULL,
	[ReservePortTime] [dbo].[DBINT] NULL,
	[DialingTime] [dbo].[DBINT] NULL,
	[AllPortsBusyCount] [dbo].[DBINT] NULL,
	[LowNoiseVolume] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dialer_IntervalTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dialer_IntervalTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[DialerID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsDialed] [dbo].[DBINT] NULL,
	[BusyDetect] [dbo].[DBINT] NULL,
	[VoiceDetect] [dbo].[DBINT] NULL,
	[AnsweringMachineDetect] [dbo].[DBINT] NULL,
	[SITToneDetect] [dbo].[DBINT] NULL,
	[NoAnswerDetect] [dbo].[DBINT] NULL,
	[AbandonDetect] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[NoRingBackDetect] [dbo].[DBINT] NULL,
	[NoDialToneDetect] [dbo].[DBINT] NULL,
	[FaxDetect] [dbo].[DBINT] NULL,
	[CancelledDetect] [dbo].[DBINT] NULL,
	[AgentRejectedDetect] [dbo].[DBINT] NULL,
	[AgentClosedDetect] [dbo].[DBINT] NULL,
	[CustomerAbandonDetect] [dbo].[DBINT] NULL,
	[AbandonToIVR] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetect] [dbo].[DBINT] NULL,
	[WrongNumberCount] [dbo].[DBINT] NULL,
	[CustomerNotHomeCount] [dbo].[DBINT] NULL,
	[PersonalCallbackCount] [dbo].[DBINT] NULL,
	[CallbackCount] [dbo].[DBINT] NULL,
	[ReservationCallAttempts] [dbo].[DBINT] NULL,
	[AllPortsBusyTime] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[IdlePortTime] [dbo].[DBINT] NULL,
	[ReservePortTime] [dbo].[DBINT] NULL,
	[DialingTime] [dbo].[DBINT] NULL,
	[AllPortsBusyCount] [dbo].[DBINT] NULL,
	[LowNoiseVolume] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dialer_Skill_Group_Half_HoTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dialer_Skill_Group_Half_HoTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[DialerID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LinesPerAgentToHalf] [dbo].[DBFLT4] NULL,
	[AgentPercentToHalf] [dbo].[DBFLT4] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[AbandonDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonToIVRToHalf] [dbo].[DBINT] NULL,
	[AgentClosedDetectToHalf] [dbo].[DBINT] NULL,
	[AgentRejectedDetectToHalf] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectToHalf] [dbo].[DBINT] NULL,
	[BusyDetectToHalf] [dbo].[DBINT] NULL,
	[CallbackCountToHalf] [dbo].[DBINT] NULL,
	[CancelledDetectToHalf] [dbo].[DBINT] NULL,
	[ContactsAttemptedToHalf] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectToHalf] [dbo].[DBINT] NULL,
	[CustomerNotHomeCountToHalf] [dbo].[DBINT] NULL,
	[DialerSkillGroupEnabled] [char](1) NULL,
	[DialerSkillGroupMode] [char](1) NULL,
	[DialerSkillGroupType] [char](1) NULL,
	[FaxDetectToHalf] [dbo].[DBINT] NULL,
	[LowNoiseVolumeToHalf] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectToHalf] [dbo].[DBINT] NULL,
	[NoAnswerDetectToHalf] [dbo].[DBINT] NULL,
	[NoDialToneDetectToHalf] [dbo].[DBINT] NULL,
	[NoRingBackDetectToHalf] [dbo].[DBINT] NULL,
	[PersonalCallbackCountToHalf] [dbo].[DBINT] NULL,
	[SITToneDetectToHalf] [dbo].[DBINT] NULL,
	[VoiceDetectToHalf] [dbo].[DBINT] NULL,
	[WrongNumberCountToHalf] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dialer_Skill_Group_Half_HoTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dialer_Skill_Group_Half_HoTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[DialerID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LinesPerAgentToHalf] [dbo].[DBFLT4] NULL,
	[AgentPercentToHalf] [dbo].[DBFLT4] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[AbandonDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonToIVRToHalf] [dbo].[DBINT] NULL,
	[AgentClosedDetectToHalf] [dbo].[DBINT] NULL,
	[AgentRejectedDetectToHalf] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectToHalf] [dbo].[DBINT] NULL,
	[BusyDetectToHalf] [dbo].[DBINT] NULL,
	[CallbackCountToHalf] [dbo].[DBINT] NULL,
	[CancelledDetectToHalf] [dbo].[DBINT] NULL,
	[ContactsAttemptedToHalf] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectToHalf] [dbo].[DBINT] NULL,
	[CustomerNotHomeCountToHalf] [dbo].[DBINT] NULL,
	[DialerSkillGroupEnabled] [char](1) NULL,
	[DialerSkillGroupMode] [char](1) NULL,
	[DialerSkillGroupType] [char](1) NULL,
	[FaxDetectToHalf] [dbo].[DBINT] NULL,
	[LowNoiseVolumeToHalf] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectToHalf] [dbo].[DBINT] NULL,
	[NoAnswerDetectToHalf] [dbo].[DBINT] NULL,
	[NoDialToneDetectToHalf] [dbo].[DBINT] NULL,
	[NoRingBackDetectToHalf] [dbo].[DBINT] NULL,
	[PersonalCallbackCountToHalf] [dbo].[DBINT] NULL,
	[SITToneDetectToHalf] [dbo].[DBINT] NULL,
	[VoiceDetectToHalf] [dbo].[DBINT] NULL,
	[WrongNumberCountToHalf] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventTmp1](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[CentralControllerVirtualTime] [dbo].[DBINT] NOT NULL,
	[CentralControllerFileTime] [dbo].[DBDATETIME] NOT NULL,
	[CentralControllerTimeZone] [dbo].[DBINT] NOT NULL,
	[VersionNum] [dbo].[DBSMALLINT] NOT NULL,
	[SystemType] [dbo].[DBSMALLINT] NOT NULL,
	[SystemId] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCodeType] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCode] [dbo].[DBINT] NOT NULL,
	[StatusCodeString] [dbo].[DESCRIPTION] NULL,
	[ProcName] [dbo].[VNAME32] NOT NULL,
	[SourceSystemName] [dbo].[VNAME32] NULL,
	[SourceVirtualTime] [dbo].[DBINT] NOT NULL,
	[SourceFileTime] [dbo].[DBDATETIME] NOT NULL,
	[MessageId] [dbo].[DBINT] NOT NULL,
	[Severity] [varchar](16) NULL,
	[Category] [dbo].[VNAME32] NULL,
	[MessageString] [dbo].[DESCRIPTION] NULL,
	[CustomerId] [dbo].[DBINT] NOT NULL,
	[Side] [dbo].[DBCHAR] NOT NULL,
	[Dword1] [dbo].[DBINT] NULL,
	[Dword2] [dbo].[DBINT] NULL,
	[Dword3] [dbo].[DBINT] NULL,
	[Dword4] [dbo].[DBINT] NULL,
	[Dword5] [dbo].[DBINT] NULL,
	[String1] [varchar](240) NULL,
	[String2] [varchar](240) NULL,
	[String3] [varchar](240) NULL,
	[String4] [varchar](240) NULL,
	[String5] [varchar](240) NULL,
	[BinData] [image] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EventTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EventTmp2](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[CentralControllerVirtualTime] [dbo].[DBINT] NOT NULL,
	[CentralControllerFileTime] [dbo].[DBDATETIME] NOT NULL,
	[CentralControllerTimeZone] [dbo].[DBINT] NOT NULL,
	[VersionNum] [dbo].[DBSMALLINT] NOT NULL,
	[SystemType] [dbo].[DBSMALLINT] NOT NULL,
	[SystemId] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCodeType] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCode] [dbo].[DBINT] NOT NULL,
	[StatusCodeString] [dbo].[DESCRIPTION] NULL,
	[ProcName] [dbo].[VNAME32] NOT NULL,
	[SourceSystemName] [dbo].[VNAME32] NULL,
	[SourceVirtualTime] [dbo].[DBINT] NOT NULL,
	[SourceFileTime] [dbo].[DBDATETIME] NOT NULL,
	[MessageId] [dbo].[DBINT] NOT NULL,
	[Severity] [varchar](16) NULL,
	[Category] [dbo].[VNAME32] NULL,
	[MessageString] [dbo].[DESCRIPTION] NULL,
	[CustomerId] [dbo].[DBINT] NOT NULL,
	[Side] [dbo].[DBCHAR] NOT NULL,
	[Dword1] [dbo].[DBINT] NULL,
	[Dword2] [dbo].[DBINT] NULL,
	[Dword3] [dbo].[DBINT] NULL,
	[Dword4] [dbo].[DBINT] NULL,
	[Dword5] [dbo].[DBINT] NULL,
	[String1] [varchar](240) NULL,
	[String2] [varchar](240) NULL,
	[String3] [varchar](240) NULL,
	[String4] [varchar](240) NULL,
	[String5] [varchar](240) NULL,
	[BinData] [image] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feature_Control_Set]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feature_Control_Set](
	[FeatureSetID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[FeatureSetData] [image] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKFeature_Control_Set] PRIMARY KEY CLUSTERED 
(
	[FeatureSetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAKFeature_Control_Set] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Group_Security_Control]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Group_Security_Control](
	[UserGroupName] [varchar](64) NOT NULL,
	[ObjectType] [dbo].[DBINT] NOT NULL,
	[ObjectID] [dbo].[DBINT] NOT NULL,
	[OriginClassID] [dbo].[DBINT] NOT NULL,
	[OriginObjectType] [dbo].[DBINT] NOT NULL,
	[OriginObjectID] [dbo].[DBINT] NOT NULL,
	[AccessLevel] [dbo].[DBINT] NOT NULL,
	[UserGroupID] [dbo].[DBINT] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ICR_Globals]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ICR_Globals](
	[CompanyName] [varchar](32) NULL,
	[KeepNScriptVersions] [dbo].[DBSMALLINT] NOT NULL,
	[PartitioningIndicator] [dbo].[DBCHAR] NULL,
	[CCDomainName] [varchar](190) NOT NULL,
	[MaxPartitions] [dbo].[DBINT] NOT NULL,
	[ICRType] [dbo].[DBINT] NOT NULL,
	[MinScriptSchedTime] [dbo].[DBINT] NOT NULL,
	[DefaultCallTypeID] [dbo].[DBINT] NULL,
	[CallTypeServiceLevelThreshold] [dbo].[DBINT] NULL,
	[CallTypeServiceLevelType] [dbo].[DBSMALLINT] NULL,
	[CallTypeAbandonCallWaitTime] [dbo].[DBSMALLINT] NULL,
	[DefaultNetworkTargetID] [dbo].[DBINT] NULL,
	[MaxCorrelationNumber] [dbo].[DBINT] NULL,
	[MinCorrelationNumber] [dbo].[DBINT] NULL,
	[EnableExpandedCallContext] [dbo].[DBCHAR] NOT NULL,
	[CLIDMaskingEnable] [dbo].[DBCHAR] NOT NULL,
	[CLIDMaskingDigitsToMask] [dbo].[DBINT] NULL,
	[CLIDMaskingRemoveDigits] [dbo].[DBCHAR] NULL,
	[CLIDMaskingMaskCharacter] [varchar](1) NULL,
	[ExternalAuthentication] [dbo].[DBCHAR] NOT NULL,
	[LoginCaseUnique] [dbo].[DBCHAR] NOT NULL,
	[MinPasswordLength] [dbo].[DBINT] NOT NULL,
	[BucketIntervalID] [dbo].[DBINT] NOT NULL,
	[ExternalScriptValidation] [varchar](255) NULL,
	[IPCCDeploymentType] [dbo].[DBINT] NULL,
	[IPCCDeploymentState] [dbo].[DBINT] NOT NULL,
	[EnableHHThrottle] [dbo].[DBCHAR] NOT NULL,
	[PasswordType] [dbo].[DBSMALLINT] NOT NULL,
	[CompatibleECCPayloadRules] [dbo].[DBCHAR] NOT NULL,
	[HistoricalReportingInterval] [dbo].[DBINT] NOT NULL,
	[PQServiceLevelType] [dbo].[DBSMALLINT] NULL,
	[PQServiceLevelThreshold] [dbo].[DBINT] NULL,
	[PQAgentOrdering] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
	[SSOEnabled] [dbo].[DBSMALLINT] NOT NULL,
	[ContextServiceConnectionData] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ICR_Locks]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ICR_Locks](
	[LockType] [dbo].[DBINT] NOT NULL,
	[LockID] [dbo].[DBINT] NOT NULL,
	[LockName] [dbo].[DESCRIPTION] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[UserName] [varchar](64) NOT NULL,
	[SystemName] [dbo].[VNAME32] NOT NULL,
	[DataFld] [varchar](255) NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[ReleaseOnSend] [dbo].[DBINT] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKICR_Locks] PRIMARY KEY CLUSTERED 
(
	[LockType] ASC,
	[LockID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ICR_View]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ICR_View](
	[ICRViewID] [dbo].[DBINT] NOT NULL,
	[ViewName] [dbo].[VNAME32] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[ViewType] [dbo].[DBINT] NOT NULL,
	[BaseTableName] [dbo].[VNAME32] NOT NULL,
	[ReadBaseTable] [dbo].[DBCHAR] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKICR_View] PRIMARY KEY CLUSTERED 
(
	[ICRViewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1ICR_View] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ids]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ids](
	[ObjectType] [dbo].[DBINT] NOT NULL,
	[ObjectID] [dbo].[DBINT] NOT NULL,
	[ParentObjectType] [dbo].[DBINT] NOT NULL,
	[ParentObjectID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKIds] PRIMARY KEY CLUSTERED 
(
	[ObjectType] ASC,
	[ObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Import_LogTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Import_LogTmp1](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[ScheduleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LogOperation] [dbo].[VNAME32] NOT NULL,
	[WorkstationName] [dbo].[VNAME32] NOT NULL,
	[RowsCopied] [dbo].[DBINT] NOT NULL,
	[Message] [dbo].[DESCRIPTION] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Import_LogTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Import_LogTmp2](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[ScheduleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LogOperation] [dbo].[VNAME32] NOT NULL,
	[WorkstationName] [dbo].[VNAME32] NOT NULL,
	[RowsCopied] [dbo].[DBINT] NOT NULL,
	[Message] [dbo].[DESCRIPTION] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Import_Rule_HistoryTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import_Rule_HistoryTmp1](
	[StartDateTime] [dbo].[DBDATETIME] NOT NULL,
	[ImportRuleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[EndDateTime] [dbo].[DBDATETIME] NOT NULL,
	[GoodRecords] [dbo].[DBINT] NOT NULL,
	[BadRecords] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[TotalRecords] [dbo].[DBINT] NOT NULL,
	[ListImportType] [dbo].[DBINT] NULL,
	[ImportType] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[ImportedToDialingListCount] [dbo].[DBINT] NULL,
	[UnmatchedRegionPrefixCount] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Import_Rule_HistoryTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Import_Rule_HistoryTmp2](
	[StartDateTime] [dbo].[DBDATETIME] NOT NULL,
	[ImportRuleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[EndDateTime] [dbo].[DBDATETIME] NOT NULL,
	[GoodRecords] [dbo].[DBINT] NOT NULL,
	[BadRecords] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[TotalRecords] [dbo].[DBINT] NOT NULL,
	[ListImportType] [dbo].[DBINT] NULL,
	[ImportType] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[ImportedToDialingListCount] [dbo].[DBINT] NULL,
	[UnmatchedRegionPrefixCount] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[License_Definition]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[License_Definition](
	[LicenseDefinitionID] [dbo].[DBINT] NOT NULL,
	[LicenseName] [dbo].[VNAME32] NOT NULL,
	[LogicalControllerType] [dbo].[DBSMALLINT] NOT NULL,
	[ClientType] [dbo].[DBSMALLINT] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
 CONSTRAINT [XPKLicense_Definition] PRIMARY KEY CLUSTERED 
(
	[LicenseDefinitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1License_Definition] UNIQUE NONCLUSTERED 
(
	[LicenseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Logger_Admin]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Logger_Admin](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ScheduledAt] [dbo].[DBDATETIME] NOT NULL,
	[TableName] [dbo].[VNAME32] NOT NULL,
	[FunctionName] [dbo].[VNAME32] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[Retain] [dbo].[DBINT] NULL,
	[FromRecoveryKey] [dbo].[DBFLT8] NULL,
	[ToRecoveryKey] [dbo].[DBFLT8] NULL,
	[StartTime] [dbo].[DBDATETIME] NULL,
	[EndTime] [dbo].[DBDATETIME] NULL,
	[RowsPurged] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKLogger_Admin] PRIMARY KEY CLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Logger_Admin] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Logger_MetersTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logger_MetersTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RouteCallDetailTo5] [dbo].[DBINT] NOT NULL,
	[TerminationCallDetailTo5] [dbo].[DBINT] NOT NULL,
	[HalfHourHistoryTo5] [dbo].[DBINT] NOT NULL,
	[FiveMinuteHistoryTo5] [dbo].[DBINT] NOT NULL,
	[MDSMessagesTo5] [dbo].[DBINT] NOT NULL,
	[DataMessagesTo5] [dbo].[DBINT] NOT NULL,
	[ConfigMessagesTo5] [dbo].[DBINT] NOT NULL,
	[EMSMessagesTo5] [dbo].[DBINT] NOT NULL,
	[MessageTimeTo5] [dbo].[DBINT] NOT NULL,
	[DataPagesAllocated] [dbo].[DBFLT8] NOT NULL,
	[LogPagesAllocated] [dbo].[DBFLT8] NOT NULL,
	[DataPagesUsed] [dbo].[DBFLT8] NOT NULL,
	[LogPagesUsed] [dbo].[DBFLT8] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logger_MetersTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logger_MetersTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RouteCallDetailTo5] [dbo].[DBINT] NOT NULL,
	[TerminationCallDetailTo5] [dbo].[DBINT] NOT NULL,
	[HalfHourHistoryTo5] [dbo].[DBINT] NOT NULL,
	[FiveMinuteHistoryTo5] [dbo].[DBINT] NOT NULL,
	[MDSMessagesTo5] [dbo].[DBINT] NOT NULL,
	[DataMessagesTo5] [dbo].[DBINT] NOT NULL,
	[ConfigMessagesTo5] [dbo].[DBINT] NOT NULL,
	[EMSMessagesTo5] [dbo].[DBINT] NOT NULL,
	[MessageTimeTo5] [dbo].[DBINT] NOT NULL,
	[DataPagesAllocated] [dbo].[DBFLT8] NOT NULL,
	[LogPagesAllocated] [dbo].[DBFLT8] NOT NULL,
	[DataPagesUsed] [dbo].[DBFLT8] NOT NULL,
	[LogPagesUsed] [dbo].[DBFLT8] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logger_Type]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logger_Type](
	[LoggerType] [dbo].[DBINT] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Network_Event_DetailTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Network_Event_DetailTmp1](
	[CallLegID] [dbo].[DBSMALLINT] NOT NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NOT NULL,
	[RouterCallKey] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[Event] [dbo].[DBSMALLINT] NULL,
	[Duration] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[Value1] [dbo].[DBINT] NULL,
	[Value2] [varchar](128) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Network_Event_DetailTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Network_Event_DetailTmp2](
	[CallLegID] [dbo].[DBSMALLINT] NOT NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NOT NULL,
	[RouterCallKey] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[Event] [dbo].[DBSMALLINT] NULL,
	[Duration] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[Value1] [dbo].[DBINT] NULL,
	[Value2] [varchar](128) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Network_Target]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Network_Target](
	[NetworkTargetID] [dbo].[DBINT] NOT NULL,
	[NetworkTargetType] [dbo].[DBSMALLINT] NOT NULL,
 CONSTRAINT [XPKNetwork_Target] PRIMARY KEY CLUSTERED 
(
	[NetworkTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Network_Trunk_Group_Half_HTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Network_Trunk_Group_Half_HTmp1](
	[NetworkTrunkGroupID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[AllTrunksBusyToHalf] [dbo].[DBINT] NULL,
	[CallsAbandonedToHalf] [dbo].[DBINT] NULL,
	[CallsInToHalf] [dbo].[DBINT] NULL,
	[CallsOutToHalf] [dbo].[DBINT] NULL,
	[InServiceTimeToHalf] [dbo].[DBINT] NULL,
	[InUseInboundTimeToHalf] [dbo].[DBINT] NULL,
	[InUseOutboundTimeToHalf] [dbo].[DBINT] NULL,
	[TrunksIdle] [dbo].[DBINT] NULL,
	[TrunksInService] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Network_Trunk_Group_Half_HTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Network_Trunk_Group_Half_HTmp2](
	[NetworkTrunkGroupID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[AllTrunksBusyToHalf] [dbo].[DBINT] NULL,
	[CallsAbandonedToHalf] [dbo].[DBINT] NULL,
	[CallsInToHalf] [dbo].[DBINT] NULL,
	[CallsOutToHalf] [dbo].[DBINT] NULL,
	[InServiceTimeToHalf] [dbo].[DBINT] NULL,
	[InUseInboundTimeToHalf] [dbo].[DBINT] NULL,
	[InUseOutboundTimeToHalf] [dbo].[DBINT] NULL,
	[TrunksIdle] [dbo].[DBINT] NULL,
	[TrunksInService] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Next_Available_Number]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Next_Available_Number](
	[TableName] [varchar](30) NOT NULL,
	[NextAvailableNumber] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XAK1Next_Available_Number] UNIQUE NONCLUSTERED 
(
	[TableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Peripheral_Half_HourTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peripheral_Half_HourTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActivePeripheralDataTimeToHalf] [dbo].[DBINT] NULL,
	[ActiveRoutingClientTimeToHalf] [dbo].[DBINT] NULL,
	[ActivePeripheralTimeToHalf] [dbo].[DBINT] NULL,
	[ActiveCTIServerTimeToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[TotalCallsInProgressSamples] [dbo].[DBINT] NULL,
	[NumberOfSamples] [dbo].[DBINT] NULL,
	[MaxCallsInProgress] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[MaxNumberLoggedOnAgentsToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Peripheral_Half_HourTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peripheral_Half_HourTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActivePeripheralDataTimeToHalf] [dbo].[DBINT] NULL,
	[ActiveRoutingClientTimeToHalf] [dbo].[DBINT] NULL,
	[ActivePeripheralTimeToHalf] [dbo].[DBINT] NULL,
	[ActiveCTIServerTimeToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[TotalCallsInProgressSamples] [dbo].[DBINT] NULL,
	[NumberOfSamples] [dbo].[DBINT] NULL,
	[MaxCallsInProgress] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[MaxNumberLoggedOnAgentsToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Peripheral_IntervalTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peripheral_IntervalTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActivePeripheralDataTime] [dbo].[DBINT] NULL,
	[ActiveRoutingClientTime] [dbo].[DBINT] NULL,
	[ActivePeripheralTime] [dbo].[DBINT] NULL,
	[ActiveCTIServerTime] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[TotalCallsInProgressSamples] [dbo].[DBINT] NULL,
	[NumberOfSamples] [dbo].[DBINT] NULL,
	[MaxCallsInProgress] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[MaxNumberLoggedOnAgents] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[MaxCVPCallControlPorts] [dbo].[DBINT] NULL,
	[MaxVRUPorts] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Peripheral_IntervalTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peripheral_IntervalTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActivePeripheralDataTime] [dbo].[DBINT] NULL,
	[ActiveRoutingClientTime] [dbo].[DBINT] NULL,
	[ActivePeripheralTime] [dbo].[DBINT] NULL,
	[ActiveCTIServerTime] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[TotalCallsInProgressSamples] [dbo].[DBINT] NULL,
	[NumberOfSamples] [dbo].[DBINT] NULL,
	[MaxCallsInProgress] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[MaxNumberLoggedOnAgents] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[MaxCVPCallControlPorts] [dbo].[DBINT] NULL,
	[MaxVRUPorts] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persistent_VariableTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persistent_VariableTmp1](
	[UserVariableID] [dbo].[DBINT] NOT NULL,
	[ForeignKey1] [dbo].[DBINT] NOT NULL,
	[ValueInt] [dbo].[DBINT] NULL,
	[ValueFloat] [dbo].[DBFLT8] NULL,
	[ValueChar] [dbo].[DESCRIPTION] NULL,
	[ValueDateTime] [dbo].[DBDATETIME] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Persistent_VariableTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Persistent_VariableTmp2](
	[UserVariableID] [dbo].[DBINT] NOT NULL,
	[ForeignKey1] [dbo].[DBINT] NOT NULL,
	[ValueInt] [dbo].[DBINT] NULL,
	[ValueFloat] [dbo].[DBFLT8] NULL,
	[ValueChar] [dbo].[DESCRIPTION] NULL,
	[ValueDateTime] [dbo].[DBDATETIME] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Physical_Controller_Half_HTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Physical_Controller_Half_HTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PhysicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActivePGAgentSideATimeToHalf] [dbo].[DBINT] NULL,
	[ActivePGAgentSideBTimeToHalf] [dbo].[DBINT] NULL,
	[DMPInServiceTimeToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Physical_Controller_Half_HTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Physical_Controller_Half_HTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PhysicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActivePGAgentSideATimeToHalf] [dbo].[DBINT] NULL,
	[ActivePGAgentSideBTimeToHalf] [dbo].[DBINT] NULL,
	[DMPInServiceTimeToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Recovery]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recovery](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[Type] [dbo].[VNAME32] NOT NULL,
	[TableName] [dbo].[VNAME32] NOT NULL,
	[FromRecoveryKey] [dbo].[DBFLT8] NULL,
	[ToRecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[StartTime] [dbo].[DBDATETIME] NULL,
	[EndTime] [dbo].[DBDATETIME] NULL,
	[RowsCopied] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKRecovery] PRIMARY KEY CLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Recovery] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Region](
	[RegionID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[RegionType] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKRegion] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Region] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region_Info]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Region_Info](
	[Location] [dbo].[VNAME32] NOT NULL,
	[MajorVersion] [dbo].[DBINT] NOT NULL,
	[MinorVersion] [dbo].[DBINT] NOT NULL,
	[Comment] [dbo].[DESCRIPTION] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region_Member](
	[RegionID] [dbo].[DBINT] NOT NULL,
	[ParentRegionID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKRegion_Member] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC,
	[ParentRegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Region_Prefix]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Region_Prefix](
	[RegionPrefixID] [dbo].[DBINT] NOT NULL,
	[RegionPrefix] [varchar](32) NOT NULL,
	[RegionID] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[GMT] [dbo].[DBINT] NULL,
	[DaylightSavingsEnabled] [dbo].[DBCHAR] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKRegion_Prefix] PRIMARY KEY CLUSTERED 
(
	[RegionPrefixID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Region_Prefix] UNIQUE NONCLUSTERED 
(
	[RegionID] ASC,
	[RegionPrefix] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region_View]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Region_View](
	[RegionViewID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[RegionViewType] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKRegion_View] PRIMARY KEY CLUSTERED 
(
	[RegionViewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Region_View] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Region_View_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region_View_Member](
	[RegionViewID] [dbo].[DBINT] NOT NULL,
	[RegionID] [dbo].[DBINT] NOT NULL,
	[Color] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKRegion_View_Member] PRIMARY KEY CLUSTERED 
(
	[RegionViewID] ASC,
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rename]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rename](
	[TableName] [dbo].[VNAME32] NOT NULL,
	[Buf] [dbo].[VNAME32] NULL,
	[Msg] [dbo].[VNAME32] NULL,
	[Tmp] [dbo].[VNAME32] NULL,
 CONSTRAINT [XPKRename] PRIMARY KEY CLUSTERED 
(
	[TableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Route_Call_DetailTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Route_Call_DetailTmp1](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DialedNumberID] [dbo].[DBINT] NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NOT NULL,
	[RouterCallKey] [dbo].[DBINT] NOT NULL,
	[RouteID] [dbo].[DBINT] NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[RequestType] [dbo].[DBSMALLINT] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[OriginatorType] [dbo].[DBSMALLINT] NULL,
	[Unused] [char](4) NULL,
	[RoutingClientCallKey] [dbo].[DBINT] NULL,
	[Priority] [dbo].[DBSMALLINT] NULL,
	[MsgOrigin] [dbo].[DBSMALLINT] NULL,
	[Variable1] [varchar](40) NULL,
	[Variable2] [varchar](40) NULL,
	[Variable3] [varchar](40) NULL,
	[Variable4] [varchar](40) NULL,
	[Variable5] [varchar](40) NULL,
	[UserToUser] [varchar](131) NULL,
	[ANI] [dbo].[VNAME32] NULL,
	[CDPD] [varchar](30) NULL,
	[CED] [varchar](30) NULL,
	[ScriptID] [dbo].[DBINT] NULL,
	[FinalObjectID] [dbo].[DBINT] NULL,
	[CallSegmentTime] [dbo].[DBINT] NULL,
	[NetQTime] [dbo].[DBINT] NULL,
	[CallTypeID] [dbo].[DBINT] NULL,
	[RouterErrorCode] [dbo].[DBSMALLINT] NULL,
	[CallTrace] [image] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[LabelID] [dbo].[DBINT] NULL,
	[Originator] [varchar](8) NULL,
	[Variable6] [varchar](40) NULL,
	[Variable7] [varchar](40) NULL,
	[Variable8] [varchar](40) NULL,
	[Variable9] [varchar](40) NULL,
	[Variable10] [varchar](40) NULL,
	[TargetLabelID] [dbo].[DBINT] NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[RouterQueueTime] [dbo].[DBINT] NULL,
	[VruScripts] [dbo].[DBINT] NULL,
	[Label] [dbo].[VNAME32] NULL,
	[TargetLabel] [dbo].[VNAME32] NULL,
	[DialedNumberString] [dbo].[VNAME32] NULL,
	[BeganRoutingDateTime] [dbo].[DBDATETIME] NULL,
	[BeganCallTypeDateTime] [dbo].[DBDATETIME] NULL,
	[TargetType] [dbo].[DBINT] NULL,
	[MRDomainID] [dbo].[DBINT] NULL,
	[RequeryResult] [dbo].[DBINT] NULL,
	[VruProgress] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[ECCPayloadID] [dbo].[DBINT] NULL,
	[ContactShareRuleID] [dbo].[DBINT] NULL,
	[ContactShareQueueID] [dbo].[DBINT] NULL,
	[ContactShareGroupID] [dbo].[DBINT] NULL,
	[ApplicationGatewayID] [dbo].[DBINT] NULL,
	[ContactShareErrorCode] [dbo].[DBINT] NULL,
	[ContactShareResult] [dbo].[DBFLT4] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Route_Call_DetailTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Route_Call_DetailTmp2](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DialedNumberID] [dbo].[DBINT] NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NOT NULL,
	[RouterCallKey] [dbo].[DBINT] NOT NULL,
	[RouteID] [dbo].[DBINT] NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[RequestType] [dbo].[DBSMALLINT] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[OriginatorType] [dbo].[DBSMALLINT] NULL,
	[Unused] [char](4) NULL,
	[RoutingClientCallKey] [dbo].[DBINT] NULL,
	[Priority] [dbo].[DBSMALLINT] NULL,
	[MsgOrigin] [dbo].[DBSMALLINT] NULL,
	[Variable1] [varchar](40) NULL,
	[Variable2] [varchar](40) NULL,
	[Variable3] [varchar](40) NULL,
	[Variable4] [varchar](40) NULL,
	[Variable5] [varchar](40) NULL,
	[UserToUser] [varchar](131) NULL,
	[ANI] [dbo].[VNAME32] NULL,
	[CDPD] [varchar](30) NULL,
	[CED] [varchar](30) NULL,
	[ScriptID] [dbo].[DBINT] NULL,
	[FinalObjectID] [dbo].[DBINT] NULL,
	[CallSegmentTime] [dbo].[DBINT] NULL,
	[NetQTime] [dbo].[DBINT] NULL,
	[CallTypeID] [dbo].[DBINT] NULL,
	[RouterErrorCode] [dbo].[DBSMALLINT] NULL,
	[CallTrace] [image] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[LabelID] [dbo].[DBINT] NULL,
	[Originator] [varchar](8) NULL,
	[Variable6] [varchar](40) NULL,
	[Variable7] [varchar](40) NULL,
	[Variable8] [varchar](40) NULL,
	[Variable9] [varchar](40) NULL,
	[Variable10] [varchar](40) NULL,
	[TargetLabelID] [dbo].[DBINT] NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[RouterQueueTime] [dbo].[DBINT] NULL,
	[VruScripts] [dbo].[DBINT] NULL,
	[Label] [dbo].[VNAME32] NULL,
	[TargetLabel] [dbo].[VNAME32] NULL,
	[DialedNumberString] [dbo].[VNAME32] NULL,
	[BeganRoutingDateTime] [dbo].[DBDATETIME] NULL,
	[BeganCallTypeDateTime] [dbo].[DBDATETIME] NULL,
	[TargetType] [dbo].[DBINT] NULL,
	[MRDomainID] [dbo].[DBINT] NULL,
	[RequeryResult] [dbo].[DBINT] NULL,
	[VruProgress] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[ECCPayloadID] [dbo].[DBINT] NULL,
	[ContactShareRuleID] [dbo].[DBINT] NULL,
	[ContactShareQueueID] [dbo].[DBINT] NULL,
	[ContactShareGroupID] [dbo].[DBINT] NULL,
	[ApplicationGatewayID] [dbo].[DBINT] NULL,
	[ContactShareErrorCode] [dbo].[DBINT] NULL,
	[ContactShareResult] [dbo].[DBFLT4] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Route_Call_VariableTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Route_Call_VariableTmp1](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RCDRecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ExpandedCallVariableID] [dbo].[DBSMALLINT] NOT NULL,
	[ArrayIndex] [dbo].[DBINT] NOT NULL,
	[ECCValue] [varchar](255) NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Route_Call_VariableTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Route_Call_VariableTmp2](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RCDRecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ExpandedCallVariableID] [dbo].[DBSMALLINT] NOT NULL,
	[ArrayIndex] [dbo].[DBINT] NOT NULL,
	[ECCValue] [varchar](255) NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Route_Five_MinuteTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route_Five_MinuteTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RouteID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[CallsOfferedToday] [dbo].[DBINT] NULL,
	[CallsIncomingToday] [dbo].[DBINT] NULL,
	[CallsHandledToday] [dbo].[DBINT] NULL,
	[CallsRoutedToday] [dbo].[DBINT] NULL,
	[CallsAbandQToday] [dbo].[DBINT] NULL,
	[ServiceLevelToday] [dbo].[DBFLT4] NULL,
	[ServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsTo5] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToday] [dbo].[DBINT] NULL,
	[ServiceLevelAbandTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsQHeld] [dbo].[DBINT] NULL,
	[LongestCallQ] [dbo].[DBINT] NULL,
	[AvgDelayQAbandTo5] [dbo].[DBINT] NULL,
	[Unused1] [dbo].[DBFLT4] NULL,
	[AvgSpeedAnswerTo5] [dbo].[DBINT] NULL,
	[CallsOfferedTo5] [dbo].[DBINT] NULL,
	[AvgTalkTimeTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[AvgHandleTimeTo5] [dbo].[DBINT] NULL,
	[AvgDelayQNow] [dbo].[DBINT] NULL,
	[CallsQNow] [dbo].[DBINT] NULL,
	[AgentsTalking] [dbo].[DBINT] NULL,
	[CallsLeftQTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredToday] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Route_Five_MinuteTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route_Five_MinuteTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RouteID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[CallsOfferedToday] [dbo].[DBINT] NULL,
	[CallsIncomingToday] [dbo].[DBINT] NULL,
	[CallsHandledToday] [dbo].[DBINT] NULL,
	[CallsRoutedToday] [dbo].[DBINT] NULL,
	[CallsAbandQToday] [dbo].[DBINT] NULL,
	[ServiceLevelToday] [dbo].[DBFLT4] NULL,
	[ServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsTo5] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToday] [dbo].[DBINT] NULL,
	[ServiceLevelAbandTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsQHeld] [dbo].[DBINT] NULL,
	[LongestCallQ] [dbo].[DBINT] NULL,
	[AvgDelayQAbandTo5] [dbo].[DBINT] NULL,
	[Unused1] [dbo].[DBFLT4] NULL,
	[AvgSpeedAnswerTo5] [dbo].[DBINT] NULL,
	[CallsOfferedTo5] [dbo].[DBINT] NULL,
	[AvgTalkTimeTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[AvgHandleTimeTo5] [dbo].[DBINT] NULL,
	[AvgDelayQNow] [dbo].[DBINT] NULL,
	[CallsQNow] [dbo].[DBINT] NULL,
	[AgentsTalking] [dbo].[DBINT] NULL,
	[CallsLeftQTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredToday] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Route_Half_HourTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route_Half_HourTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RouteID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[CallsIncomingToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToHalf] [dbo].[DBINT] NULL,
	[CallsAbandQToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQToHalf] [dbo].[DBINT] NULL,
	[DelayQTimeToHalf] [dbo].[DBINT] NULL,
	[CallsQToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQAbandToHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeToHalf] [dbo].[DBINT] NULL,
	[AvgSpeedAnswerToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvgTalkTimeToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[AvgHandleTimeToHalf] [dbo].[DBINT] NULL,
	[HandleTimeToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[LongestCallAbandTime] [dbo].[DBINT] NULL,
	[LongestCallDelayQTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[ShortCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ForcedClosedCallsToHalf] [dbo].[DBINT] NULL,
	[OverflowInToHalf] [dbo].[DBINT] NULL,
	[OverflowOutToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[BlindTransfersOutToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Route_Half_HourTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Route_Half_HourTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RouteID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[CallsIncomingToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToHalf] [dbo].[DBINT] NULL,
	[CallsAbandQToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQToHalf] [dbo].[DBINT] NULL,
	[DelayQTimeToHalf] [dbo].[DBINT] NULL,
	[CallsQToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQAbandToHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeToHalf] [dbo].[DBINT] NULL,
	[AvgSpeedAnswerToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvgTalkTimeToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[AvgHandleTimeToHalf] [dbo].[DBINT] NULL,
	[HandleTimeToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[LongestCallAbandTime] [dbo].[DBINT] NULL,
	[LongestCallDelayQTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[ShortCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ForcedClosedCallsToHalf] [dbo].[DBINT] NULL,
	[OverflowInToHalf] [dbo].[DBINT] NULL,
	[OverflowOutToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[BlindTransfersOutToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Router_Queue_IntervalTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Router_Queue_IntervalTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[QueueCalls] [dbo].[DBINT] NULL,
	[CallsAbandQ] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[CallsAbandToAgent] [dbo].[DBINT] NULL,
	[CallsDequeued] [dbo].[DBINT] NULL,
	[RouterError] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevelCallsAband] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeue] [dbo].[DBINT] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[MaxCallsQueued] [dbo].[DBINT] NULL,
	[MaxCallWaitTime] [dbo].[DBINT] NULL,
	[CallsAbandDequeued] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[AttributeID1] [dbo].[DBINT] NULL,
	[AttributeID2] [dbo].[DBINT] NULL,
	[AttributeID3] [dbo].[DBINT] NULL,
	[AttributeID4] [dbo].[DBINT] NULL,
	[AttributeID5] [dbo].[DBINT] NULL,
	[AttributeID6] [dbo].[DBINT] NULL,
	[AttributeID7] [dbo].[DBINT] NULL,
	[AttributeID8] [dbo].[DBINT] NULL,
	[AttributeID9] [dbo].[DBINT] NULL,
	[AttributeID10] [dbo].[DBINT] NULL,
	[AnsStep1] [dbo].[DBINT] NULL,
	[AnsStep2] [dbo].[DBINT] NULL,
	[AnsStep3] [dbo].[DBINT] NULL,
	[AnsStep4] [dbo].[DBINT] NULL,
	[AnsStep5] [dbo].[DBINT] NULL,
	[AnsStep6] [dbo].[DBINT] NULL,
	[AnsStep7] [dbo].[DBINT] NULL,
	[AnsStep8] [dbo].[DBINT] NULL,
	[AnsStep9] [dbo].[DBINT] NULL,
	[AnsStep10] [dbo].[DBINT] NULL,
	[OfferedStep1] [dbo].[DBINT] NULL,
	[OfferedStep2] [dbo].[DBINT] NULL,
	[OfferedStep3] [dbo].[DBINT] NULL,
	[OfferedStep4] [dbo].[DBINT] NULL,
	[OfferedStep5] [dbo].[DBINT] NULL,
	[OfferedStep6] [dbo].[DBINT] NULL,
	[OfferedStep7] [dbo].[DBINT] NULL,
	[OfferedStep8] [dbo].[DBINT] NULL,
	[OfferedStep9] [dbo].[DBINT] NULL,
	[OfferedStep10] [dbo].[DBINT] NULL,
	[AbandStep1] [dbo].[DBINT] NULL,
	[AbandStep2] [dbo].[DBINT] NULL,
	[AbandStep3] [dbo].[DBINT] NULL,
	[AbandStep4] [dbo].[DBINT] NULL,
	[AbandStep5] [dbo].[DBINT] NULL,
	[AbandStep6] [dbo].[DBINT] NULL,
	[AbandStep7] [dbo].[DBINT] NULL,
	[AbandStep8] [dbo].[DBINT] NULL,
	[AbandStep9] [dbo].[DBINT] NULL,
	[AbandStep10] [dbo].[DBINT] NULL,
	[SkipStep1] [dbo].[DBINT] NULL,
	[SkipStep2] [dbo].[DBINT] NULL,
	[SkipStep3] [dbo].[DBINT] NULL,
	[SkipStep4] [dbo].[DBINT] NULL,
	[SkipStep5] [dbo].[DBINT] NULL,
	[SkipStep6] [dbo].[DBINT] NULL,
	[SkipStep7] [dbo].[DBINT] NULL,
	[SkipStep8] [dbo].[DBINT] NULL,
	[SkipStep9] [dbo].[DBINT] NULL,
	[SkipStep10] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[RoutedToAgent] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Router_Queue_IntervalTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Router_Queue_IntervalTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[QueueCalls] [dbo].[DBINT] NULL,
	[CallsAbandQ] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[CallsAbandToAgent] [dbo].[DBINT] NULL,
	[CallsDequeued] [dbo].[DBINT] NULL,
	[RouterError] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevelCallsAband] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeue] [dbo].[DBINT] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[MaxCallsQueued] [dbo].[DBINT] NULL,
	[MaxCallWaitTime] [dbo].[DBINT] NULL,
	[CallsAbandDequeued] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[AttributeID1] [dbo].[DBINT] NULL,
	[AttributeID2] [dbo].[DBINT] NULL,
	[AttributeID3] [dbo].[DBINT] NULL,
	[AttributeID4] [dbo].[DBINT] NULL,
	[AttributeID5] [dbo].[DBINT] NULL,
	[AttributeID6] [dbo].[DBINT] NULL,
	[AttributeID7] [dbo].[DBINT] NULL,
	[AttributeID8] [dbo].[DBINT] NULL,
	[AttributeID9] [dbo].[DBINT] NULL,
	[AttributeID10] [dbo].[DBINT] NULL,
	[AnsStep1] [dbo].[DBINT] NULL,
	[AnsStep2] [dbo].[DBINT] NULL,
	[AnsStep3] [dbo].[DBINT] NULL,
	[AnsStep4] [dbo].[DBINT] NULL,
	[AnsStep5] [dbo].[DBINT] NULL,
	[AnsStep6] [dbo].[DBINT] NULL,
	[AnsStep7] [dbo].[DBINT] NULL,
	[AnsStep8] [dbo].[DBINT] NULL,
	[AnsStep9] [dbo].[DBINT] NULL,
	[AnsStep10] [dbo].[DBINT] NULL,
	[OfferedStep1] [dbo].[DBINT] NULL,
	[OfferedStep2] [dbo].[DBINT] NULL,
	[OfferedStep3] [dbo].[DBINT] NULL,
	[OfferedStep4] [dbo].[DBINT] NULL,
	[OfferedStep5] [dbo].[DBINT] NULL,
	[OfferedStep6] [dbo].[DBINT] NULL,
	[OfferedStep7] [dbo].[DBINT] NULL,
	[OfferedStep8] [dbo].[DBINT] NULL,
	[OfferedStep9] [dbo].[DBINT] NULL,
	[OfferedStep10] [dbo].[DBINT] NULL,
	[AbandStep1] [dbo].[DBINT] NULL,
	[AbandStep2] [dbo].[DBINT] NULL,
	[AbandStep3] [dbo].[DBINT] NULL,
	[AbandStep4] [dbo].[DBINT] NULL,
	[AbandStep5] [dbo].[DBINT] NULL,
	[AbandStep6] [dbo].[DBINT] NULL,
	[AbandStep7] [dbo].[DBINT] NULL,
	[AbandStep8] [dbo].[DBINT] NULL,
	[AbandStep9] [dbo].[DBINT] NULL,
	[AbandStep10] [dbo].[DBINT] NULL,
	[SkipStep1] [dbo].[DBINT] NULL,
	[SkipStep2] [dbo].[DBINT] NULL,
	[SkipStep3] [dbo].[DBINT] NULL,
	[SkipStep4] [dbo].[DBINT] NULL,
	[SkipStep5] [dbo].[DBINT] NULL,
	[SkipStep6] [dbo].[DBINT] NULL,
	[SkipStep7] [dbo].[DBINT] NULL,
	[SkipStep8] [dbo].[DBINT] NULL,
	[SkipStep9] [dbo].[DBINT] NULL,
	[SkipStep10] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[RoutedToAgent] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Routing_Client_Five_MinuteTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Routing_Client_Five_MinuteTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[PhysicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ResponsesTo5] [dbo].[DBINT] NOT NULL,
	[MeanResponseTo5] [dbo].[DBINT] NOT NULL,
	[RcvInErrorTo5] [dbo].[DBINT] NOT NULL,
	[TimeoutCallsTo5] [dbo].[DBINT] NOT NULL,
	[MaxDelay] [dbo].[DBINT] NOT NULL,
	[LateCallsTo5] [dbo].[DBINT] NOT NULL,
	[DiscardedCallsTo5] [dbo].[DBINT] NOT NULL,
	[CircularRouteResponsesTo5] [dbo].[DBINT] NOT NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[TranslationRouteAbortedTo5] [dbo].[DBINT] NULL,
	[TranslationRouteTimedOutTo5] [dbo].[DBINT] NULL,
	[NewCallTo5] [dbo].[DBINT] NULL,
	[ReqInstrTo5] [dbo].[DBINT] NULL,
	[ConnectTo5] [dbo].[DBINT] NULL,
	[CallGapTo5] [dbo].[DBINT] NULL,
	[ActivityTestTo5] [dbo].[DBINT] NULL,
	[CallEventReportTo5] [dbo].[DBINT] NULL,
	[ReRouteReqTo5] [dbo].[DBINT] NULL,
	[RunScriptTo5] [dbo].[DBINT] NULL,
	[ScriptRespTo5] [dbo].[DBINT] NULL,
	[DialogFailTo5] [dbo].[DBINT] NULL,
	[DialogErrorConfTo5] [dbo].[DBINT] NULL,
	[DestinationTo5] [dbo].[DBINT] NULL,
	[AnnouncementTo5] [dbo].[DBINT] NULL,
	[PeripheralQueueTo5] [dbo].[DBINT] NULL,
	[CallRouterQueueTo5] [dbo].[DBINT] NULL,
	[NetworkBusyTo5] [dbo].[DBINT] NULL,
	[NetworkRingTo5] [dbo].[DBINT] NULL,
	[NetworkPostQueryTo5] [dbo].[DBINT] NULL,
	[NetworkDefaultTo5] [dbo].[DBINT] NULL,
	[NetworkResourceTo5] [dbo].[DBINT] NULL,
	[RouteSelectFailureTo5] [dbo].[DBINT] NULL,
	[CalledPartyBusyTo5] [dbo].[DBINT] NULL,
	[NoAnswerTo5] [dbo].[DBINT] NULL,
	[AnswerTo5] [dbo].[DBINT] NULL,
	[AbandonTo5] [dbo].[DBINT] NULL,
	[DisconnectTo5] [dbo].[DBINT] NULL,
	[Histogram0] [dbo].[DBINT] NULL,
	[Histogram1] [dbo].[DBINT] NULL,
	[Histogram2] [dbo].[DBINT] NULL,
	[Histogram3] [dbo].[DBINT] NULL,
	[Histogram4] [dbo].[DBINT] NULL,
	[Histogram5] [dbo].[DBINT] NULL,
	[Histogram6] [dbo].[DBINT] NULL,
	[Histogram7] [dbo].[DBINT] NULL,
	[Histogram8] [dbo].[DBINT] NULL,
	[Histogram9] [dbo].[DBINT] NULL,
	[Histogram10] [dbo].[DBINT] NULL,
	[Histogram11] [dbo].[DBINT] NULL,
	[Histogram12] [dbo].[DBINT] NULL,
	[Histogram13] [dbo].[DBINT] NULL,
	[Histogram14] [dbo].[DBINT] NULL,
	[Histogram15] [dbo].[DBINT] NULL,
	[Histogram16] [dbo].[DBINT] NULL,
	[Histogram17] [dbo].[DBINT] NULL,
	[Histogram18] [dbo].[DBINT] NULL,
	[Histogram19] [dbo].[DBINT] NULL,
	[NumCancelInd] [dbo].[DBINT] NULL,
	[NumReleaseInd] [dbo].[DBINT] NULL,
	[NumBlindTransferConfTo5] [dbo].[DBINT] NULL,
	[NumTransferEventTo5] [dbo].[DBINT] NULL,
	[NumCallFailedEventTo5] [dbo].[DBINT] NULL,
	[NumConsultConfTo5] [dbo].[DBINT] NULL,
	[NumCallHeldEventTo5] [dbo].[DBINT] NULL,
	[NumCallOriginatedEventTo5] [dbo].[DBINT] NULL,
	[NumCallEstablishedEventTo5] [dbo].[DBINT] NULL,
	[NumRetrievedEventTo5] [dbo].[DBINT] NULL,
	[NumConnectionClearedEventTo5] [dbo].[DBINT] NULL,
	[NumConferencedEventTo5] [dbo].[DBINT] NULL,
	[NumAlternateCallReqTo5] [dbo].[DBINT] NULL,
	[NumAlternateCallConfTo5] [dbo].[DBINT] NULL,
	[NumReconnectCallReqTo5] [dbo].[DBINT] NULL,
	[NumReconnectCallConfTo5] [dbo].[DBINT] NULL,
	[NumConsultTransferReqTo5] [dbo].[DBINT] NULL,
	[NumConsultTransferConfTo5] [dbo].[DBINT] NULL,
	[NumConferenceCallReqTo5] [dbo].[DBINT] NULL,
	[NumConferenceCallConfTo5] [dbo].[DBINT] NULL,
	[NumDropConnectionReqTo5] [dbo].[DBINT] NULL,
	[NumDropConnectionConfTo5] [dbo].[DBINT] NULL,
	[RejectedRequestsTo5] [dbo].[DBINT] NULL,
	[HighestCongestionLevelTo5] [dbo].[DBINT] NULL,
	[CongestionDurationTo5] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Routing_Client_Five_MinuteTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Routing_Client_Five_MinuteTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[PhysicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ResponsesTo5] [dbo].[DBINT] NOT NULL,
	[MeanResponseTo5] [dbo].[DBINT] NOT NULL,
	[RcvInErrorTo5] [dbo].[DBINT] NOT NULL,
	[TimeoutCallsTo5] [dbo].[DBINT] NOT NULL,
	[MaxDelay] [dbo].[DBINT] NOT NULL,
	[LateCallsTo5] [dbo].[DBINT] NOT NULL,
	[DiscardedCallsTo5] [dbo].[DBINT] NOT NULL,
	[CircularRouteResponsesTo5] [dbo].[DBINT] NOT NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[TranslationRouteAbortedTo5] [dbo].[DBINT] NULL,
	[TranslationRouteTimedOutTo5] [dbo].[DBINT] NULL,
	[NewCallTo5] [dbo].[DBINT] NULL,
	[ReqInstrTo5] [dbo].[DBINT] NULL,
	[ConnectTo5] [dbo].[DBINT] NULL,
	[CallGapTo5] [dbo].[DBINT] NULL,
	[ActivityTestTo5] [dbo].[DBINT] NULL,
	[CallEventReportTo5] [dbo].[DBINT] NULL,
	[ReRouteReqTo5] [dbo].[DBINT] NULL,
	[RunScriptTo5] [dbo].[DBINT] NULL,
	[ScriptRespTo5] [dbo].[DBINT] NULL,
	[DialogFailTo5] [dbo].[DBINT] NULL,
	[DialogErrorConfTo5] [dbo].[DBINT] NULL,
	[DestinationTo5] [dbo].[DBINT] NULL,
	[AnnouncementTo5] [dbo].[DBINT] NULL,
	[PeripheralQueueTo5] [dbo].[DBINT] NULL,
	[CallRouterQueueTo5] [dbo].[DBINT] NULL,
	[NetworkBusyTo5] [dbo].[DBINT] NULL,
	[NetworkRingTo5] [dbo].[DBINT] NULL,
	[NetworkPostQueryTo5] [dbo].[DBINT] NULL,
	[NetworkDefaultTo5] [dbo].[DBINT] NULL,
	[NetworkResourceTo5] [dbo].[DBINT] NULL,
	[RouteSelectFailureTo5] [dbo].[DBINT] NULL,
	[CalledPartyBusyTo5] [dbo].[DBINT] NULL,
	[NoAnswerTo5] [dbo].[DBINT] NULL,
	[AnswerTo5] [dbo].[DBINT] NULL,
	[AbandonTo5] [dbo].[DBINT] NULL,
	[DisconnectTo5] [dbo].[DBINT] NULL,
	[Histogram0] [dbo].[DBINT] NULL,
	[Histogram1] [dbo].[DBINT] NULL,
	[Histogram2] [dbo].[DBINT] NULL,
	[Histogram3] [dbo].[DBINT] NULL,
	[Histogram4] [dbo].[DBINT] NULL,
	[Histogram5] [dbo].[DBINT] NULL,
	[Histogram6] [dbo].[DBINT] NULL,
	[Histogram7] [dbo].[DBINT] NULL,
	[Histogram8] [dbo].[DBINT] NULL,
	[Histogram9] [dbo].[DBINT] NULL,
	[Histogram10] [dbo].[DBINT] NULL,
	[Histogram11] [dbo].[DBINT] NULL,
	[Histogram12] [dbo].[DBINT] NULL,
	[Histogram13] [dbo].[DBINT] NULL,
	[Histogram14] [dbo].[DBINT] NULL,
	[Histogram15] [dbo].[DBINT] NULL,
	[Histogram16] [dbo].[DBINT] NULL,
	[Histogram17] [dbo].[DBINT] NULL,
	[Histogram18] [dbo].[DBINT] NULL,
	[Histogram19] [dbo].[DBINT] NULL,
	[NumCancelInd] [dbo].[DBINT] NULL,
	[NumReleaseInd] [dbo].[DBINT] NULL,
	[NumBlindTransferConfTo5] [dbo].[DBINT] NULL,
	[NumTransferEventTo5] [dbo].[DBINT] NULL,
	[NumCallFailedEventTo5] [dbo].[DBINT] NULL,
	[NumConsultConfTo5] [dbo].[DBINT] NULL,
	[NumCallHeldEventTo5] [dbo].[DBINT] NULL,
	[NumCallOriginatedEventTo5] [dbo].[DBINT] NULL,
	[NumCallEstablishedEventTo5] [dbo].[DBINT] NULL,
	[NumRetrievedEventTo5] [dbo].[DBINT] NULL,
	[NumConnectionClearedEventTo5] [dbo].[DBINT] NULL,
	[NumConferencedEventTo5] [dbo].[DBINT] NULL,
	[NumAlternateCallReqTo5] [dbo].[DBINT] NULL,
	[NumAlternateCallConfTo5] [dbo].[DBINT] NULL,
	[NumReconnectCallReqTo5] [dbo].[DBINT] NULL,
	[NumReconnectCallConfTo5] [dbo].[DBINT] NULL,
	[NumConsultTransferReqTo5] [dbo].[DBINT] NULL,
	[NumConsultTransferConfTo5] [dbo].[DBINT] NULL,
	[NumConferenceCallReqTo5] [dbo].[DBINT] NULL,
	[NumConferenceCallConfTo5] [dbo].[DBINT] NULL,
	[NumDropConnectionReqTo5] [dbo].[DBINT] NULL,
	[NumDropConnectionConfTo5] [dbo].[DBINT] NULL,
	[RejectedRequestsTo5] [dbo].[DBINT] NULL,
	[HighestCongestionLevelTo5] [dbo].[DBINT] NULL,
	[CongestionDurationTo5] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Schedule_ImportTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schedule_ImportTmp1](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[ScheduleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[Long1] [dbo].[DBINT] NULL,
	[Long2] [dbo].[DBINT] NULL,
	[Long3] [dbo].[DBINT] NULL,
	[Long4] [dbo].[DBINT] NULL,
	[Long5] [dbo].[DBINT] NULL,
	[Long6] [dbo].[DBINT] NULL,
	[Long7] [dbo].[DBINT] NULL,
	[Long8] [dbo].[DBINT] NULL,
	[Long9] [dbo].[DBINT] NULL,
	[Long10] [dbo].[DBINT] NULL,
	[Long11] [dbo].[DBINT] NULL,
	[Long12] [dbo].[DBINT] NULL,
	[Long13] [dbo].[DBINT] NULL,
	[Long14] [dbo].[DBINT] NULL,
	[Long15] [dbo].[DBINT] NULL,
	[Double1] [dbo].[DBFLT8] NULL,
	[Double2] [dbo].[DBFLT8] NULL,
	[Double3] [dbo].[DBFLT8] NULL,
	[Double4] [dbo].[DBFLT8] NULL,
	[Double5] [dbo].[DBFLT8] NULL,
	[Double6] [dbo].[DBFLT8] NULL,
	[Double7] [dbo].[DBFLT8] NULL,
	[Double8] [dbo].[DBFLT8] NULL,
	[Double9] [dbo].[DBFLT8] NULL,
	[Double10] [dbo].[DBFLT8] NULL,
	[String1] [dbo].[DESCRIPTION] NULL,
	[String2] [dbo].[DESCRIPTION] NULL,
	[String3] [dbo].[DESCRIPTION] NULL,
	[String4] [dbo].[DESCRIPTION] NULL,
	[String5] [dbo].[DESCRIPTION] NULL,
	[DateTime1] [dbo].[DBDATETIME] NULL,
	[DateTime2] [dbo].[DBDATETIME] NULL,
	[DateTime3] [dbo].[DBDATETIME] NULL,
	[Bool1] [dbo].[DBCHAR] NOT NULL,
	[Bool2] [dbo].[DBCHAR] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Schedule_ImportTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Schedule_ImportTmp2](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[ScheduleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[Long1] [dbo].[DBINT] NULL,
	[Long2] [dbo].[DBINT] NULL,
	[Long3] [dbo].[DBINT] NULL,
	[Long4] [dbo].[DBINT] NULL,
	[Long5] [dbo].[DBINT] NULL,
	[Long6] [dbo].[DBINT] NULL,
	[Long7] [dbo].[DBINT] NULL,
	[Long8] [dbo].[DBINT] NULL,
	[Long9] [dbo].[DBINT] NULL,
	[Long10] [dbo].[DBINT] NULL,
	[Long11] [dbo].[DBINT] NULL,
	[Long12] [dbo].[DBINT] NULL,
	[Long13] [dbo].[DBINT] NULL,
	[Long14] [dbo].[DBINT] NULL,
	[Long15] [dbo].[DBINT] NULL,
	[Double1] [dbo].[DBFLT8] NULL,
	[Double2] [dbo].[DBFLT8] NULL,
	[Double3] [dbo].[DBFLT8] NULL,
	[Double4] [dbo].[DBFLT8] NULL,
	[Double5] [dbo].[DBFLT8] NULL,
	[Double6] [dbo].[DBFLT8] NULL,
	[Double7] [dbo].[DBFLT8] NULL,
	[Double8] [dbo].[DBFLT8] NULL,
	[Double9] [dbo].[DBFLT8] NULL,
	[Double10] [dbo].[DBFLT8] NULL,
	[String1] [dbo].[DESCRIPTION] NULL,
	[String2] [dbo].[DESCRIPTION] NULL,
	[String3] [dbo].[DESCRIPTION] NULL,
	[String4] [dbo].[DESCRIPTION] NULL,
	[String5] [dbo].[DESCRIPTION] NULL,
	[DateTime1] [dbo].[DBDATETIME] NULL,
	[DateTime2] [dbo].[DBDATETIME] NULL,
	[DateTime3] [dbo].[DBDATETIME] NULL,
	[Bool1] [dbo].[DBCHAR] NOT NULL,
	[Bool2] [dbo].[DBCHAR] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Script_Five_MinuteTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Script_Five_MinuteTmp1](
	[ScriptID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsIncomingTo5] [dbo].[DBINT] NOT NULL,
	[CallsRoutedTo5] [dbo].[DBINT] NOT NULL,
	[CallsPerNode] [varchar](255) NOT NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Script_Five_MinuteTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Script_Five_MinuteTmp2](
	[ScriptID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsIncomingTo5] [dbo].[DBINT] NOT NULL,
	[CallsRoutedTo5] [dbo].[DBINT] NOT NULL,
	[CallsPerNode] [varchar](255) NOT NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sec_Group]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sec_Group](
	[UserGroupID] [dbo].[DBINT] NOT NULL,
	[UserGroupName] [varchar](64) NOT NULL,
 CONSTRAINT [XPKSec_Group] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sec_User]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sec_User](
	[UserGroupID] [dbo].[DBINT] NOT NULL,
	[UserGroupName] [varchar](64) NOT NULL,
 CONSTRAINT [XPKSec_User] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Service_Five_MinuteTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Five_MinuteTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[CallsOfferedToday] [dbo].[DBINT] NULL,
	[CallsIncomingToday] [dbo].[DBINT] NULL,
	[CallsHandledToday] [dbo].[DBINT] NULL,
	[CallsRoutedToday] [dbo].[DBINT] NULL,
	[CallsAbandQToday] [dbo].[DBINT] NULL,
	[PeriphServiceLevelToday] [dbo].[DBFLT4] NULL,
	[PeriphServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelToday] [dbo].[DBFLT4] NULL,
	[ServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsTo5] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToday] [dbo].[DBINT] NULL,
	[ServiceLevelAbandTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsQHeld] [dbo].[DBINT] NULL,
	[LongestCallQ] [dbo].[DBINT] NULL,
	[AvgDelayQAbandTo5] [dbo].[DBINT] NULL,
	[ExpectedDelay] [dbo].[DBFLT4] NULL,
	[AvgSpeedAnswerTo5] [dbo].[DBINT] NULL,
	[CallsOfferedTo5] [dbo].[DBINT] NULL,
	[AvgTalkTimeTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[AvgHandleTimeTo5] [dbo].[DBINT] NULL,
	[AvgDelayQNow] [dbo].[DBINT] NULL,
	[CallsQNow] [dbo].[DBINT] NULL,
	[Unused1] [dbo].[DBINT] NULL,
	[AgentsTalking] [dbo].[DBINT] NULL,
	[CallsLeftQTo5] [dbo].[DBINT] NULL,
	[OverflowInTo5] [dbo].[DBINT] NULL,
	[OverflowOutTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredToday] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[LongestAvailAgent] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Service_Five_MinuteTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Five_MinuteTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[CallsOfferedToday] [dbo].[DBINT] NULL,
	[CallsIncomingToday] [dbo].[DBINT] NULL,
	[CallsHandledToday] [dbo].[DBINT] NULL,
	[CallsRoutedToday] [dbo].[DBINT] NULL,
	[CallsAbandQToday] [dbo].[DBINT] NULL,
	[PeriphServiceLevelToday] [dbo].[DBFLT4] NULL,
	[PeriphServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelToday] [dbo].[DBFLT4] NULL,
	[ServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsTo5] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToday] [dbo].[DBINT] NULL,
	[ServiceLevelAbandTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsQHeld] [dbo].[DBINT] NULL,
	[LongestCallQ] [dbo].[DBINT] NULL,
	[AvgDelayQAbandTo5] [dbo].[DBINT] NULL,
	[ExpectedDelay] [dbo].[DBFLT4] NULL,
	[AvgSpeedAnswerTo5] [dbo].[DBINT] NULL,
	[CallsOfferedTo5] [dbo].[DBINT] NULL,
	[AvgTalkTimeTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[AvgHandleTimeTo5] [dbo].[DBINT] NULL,
	[AvgDelayQNow] [dbo].[DBINT] NULL,
	[CallsQNow] [dbo].[DBINT] NULL,
	[Unused1] [dbo].[DBINT] NULL,
	[AgentsTalking] [dbo].[DBINT] NULL,
	[CallsLeftQTo5] [dbo].[DBINT] NULL,
	[OverflowInTo5] [dbo].[DBINT] NULL,
	[OverflowOutTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredToday] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[LongestAvailAgent] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Service_Half_HourTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Half_HourTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsOutToHalf] [dbo].[DBINT] NULL,
	[CallsTerminatedOtherToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[PeriphServiceLevelOfferToHalf] [dbo].[DBINT] NULL,
	[CallsIncomingToHalf] [dbo].[DBINT] NULL,
	[TransferInCallsToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[TransferOutCallsToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToHalf] [dbo].[DBINT] NULL,
	[CallsAbandQToHalf] [dbo].[DBINT] NULL,
	[PeriphServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[PeriphServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQToHalf] [dbo].[DBINT] NULL,
	[DelayQTimeToHalf] [dbo].[DBINT] NULL,
	[CallsQToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQAbandToHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeToHalf] [dbo].[DBINT] NULL,
	[AvgSpeedAnswerToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvgTalkTimeToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[AvgHandleTimeToHalf] [dbo].[DBINT] NULL,
	[HandleTimeToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[LongestCallAbandTime] [dbo].[DBINT] NULL,
	[LongestCallDelayQTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ShortCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ForcedClosedCallsToHalf] [dbo].[DBINT] NULL,
	[OverflowInToHalf] [dbo].[DBINT] NULL,
	[OverflowOutToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[BlindTransfersOutToHalf] [dbo].[DBINT] NULL,
	[NumMissingTasks] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Service_Half_HourTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Half_HourTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsOutToHalf] [dbo].[DBINT] NULL,
	[CallsTerminatedOtherToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[PeriphServiceLevelOfferToHalf] [dbo].[DBINT] NULL,
	[CallsIncomingToHalf] [dbo].[DBINT] NULL,
	[TransferInCallsToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[TransferOutCallsToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToHalf] [dbo].[DBINT] NULL,
	[CallsAbandQToHalf] [dbo].[DBINT] NULL,
	[PeriphServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[PeriphServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQToHalf] [dbo].[DBINT] NULL,
	[DelayQTimeToHalf] [dbo].[DBINT] NULL,
	[CallsQToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQAbandToHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeToHalf] [dbo].[DBINT] NULL,
	[AvgSpeedAnswerToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvgTalkTimeToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[AvgHandleTimeToHalf] [dbo].[DBINT] NULL,
	[HandleTimeToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[LongestCallAbandTime] [dbo].[DBINT] NULL,
	[LongestCallDelayQTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ShortCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ForcedClosedCallsToHalf] [dbo].[DBINT] NULL,
	[OverflowInToHalf] [dbo].[DBINT] NULL,
	[OverflowOutToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[BlindTransfersOutToHalf] [dbo].[DBINT] NULL,
	[NumMissingTasks] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Service_IntervalTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_IntervalTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsOut] [dbo].[DBINT] NULL,
	[CallsTerminatedOther] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[PeriphServiceLevelOffer] [dbo].[DBINT] NULL,
	[CallsIncoming] [dbo].[DBINT] NULL,
	[TransferInCalls] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[TransferOutCalls] [dbo].[DBINT] NULL,
	[CallsRouted] [dbo].[DBINT] NULL,
	[CallsAbandQ] [dbo].[DBINT] NULL,
	[PeriphServiceLevel] [dbo].[DBFLT4] NULL,
	[PeriphServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[AvgDelayQ] [dbo].[DBINT] NULL,
	[DelayQTime] [dbo].[DBINT] NULL,
	[CallsQ] [dbo].[DBINT] NULL,
	[AvgDelayQAband] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[AvgSpeedAnswer] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AvgTalkTime] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[AvgHandleTime] [dbo].[DBINT] NULL,
	[HandleTime] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[LongestCallAbandTime] [dbo].[DBINT] NULL,
	[LongestCallDelayQTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ShortCallsTime] [dbo].[DBINT] NULL,
	[ForcedClosedCalls] [dbo].[DBINT] NULL,
	[OverflowIn] [dbo].[DBINT] NULL,
	[OverflowOut] [dbo].[DBINT] NULL,
	[AutoOutCalls] [dbo].[DBINT] NULL,
	[AutoOutCallsTime] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHold] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[PreviewCalls] [dbo].[DBINT] NULL,
	[PreviewCallsTime] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTime] [dbo].[DBINT] NULL,
	[PreviewCallsOnHold] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTime] [dbo].[DBINT] NULL,
	[ReserveCalls] [dbo].[DBINT] NULL,
	[ReserveCallsTime] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTime] [dbo].[DBINT] NULL,
	[ReserveCallsOnHold] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[BlindTransfersOut] [dbo].[DBINT] NULL,
	[NumMissingTasks] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RedirectNoAnsCalls] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Service_IntervalTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_IntervalTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsOut] [dbo].[DBINT] NULL,
	[CallsTerminatedOther] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[PeriphServiceLevelOffer] [dbo].[DBINT] NULL,
	[CallsIncoming] [dbo].[DBINT] NULL,
	[TransferInCalls] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[TransferOutCalls] [dbo].[DBINT] NULL,
	[CallsRouted] [dbo].[DBINT] NULL,
	[CallsAbandQ] [dbo].[DBINT] NULL,
	[PeriphServiceLevel] [dbo].[DBFLT4] NULL,
	[PeriphServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[AvgDelayQ] [dbo].[DBINT] NULL,
	[DelayQTime] [dbo].[DBINT] NULL,
	[CallsQ] [dbo].[DBINT] NULL,
	[AvgDelayQAband] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[AvgSpeedAnswer] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AvgTalkTime] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[AvgHandleTime] [dbo].[DBINT] NULL,
	[HandleTime] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[LongestCallAbandTime] [dbo].[DBINT] NULL,
	[LongestCallDelayQTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ShortCallsTime] [dbo].[DBINT] NULL,
	[ForcedClosedCalls] [dbo].[DBINT] NULL,
	[OverflowIn] [dbo].[DBINT] NULL,
	[OverflowOut] [dbo].[DBINT] NULL,
	[AutoOutCalls] [dbo].[DBINT] NULL,
	[AutoOutCallsTime] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHold] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[PreviewCalls] [dbo].[DBINT] NULL,
	[PreviewCallsTime] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTime] [dbo].[DBINT] NULL,
	[PreviewCallsOnHold] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTime] [dbo].[DBINT] NULL,
	[ReserveCalls] [dbo].[DBINT] NULL,
	[ReserveCallsTime] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTime] [dbo].[DBINT] NULL,
	[ReserveCallsOnHold] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[BlindTransfersOut] [dbo].[DBINT] NULL,
	[NumMissingTasks] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RedirectNoAnsCalls] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shift]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shift](
	[ShiftName] [dbo].[VNAME32] NOT NULL,
	[StartTime] [smalldatetime] NOT NULL,
	[StopTime] [smalldatetime] NOT NULL,
 CONSTRAINT [XPKShift] PRIMARY KEY NONCLUSTERED 
(
	[ShiftName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Skill_Group_Five_MinuteTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_Group_Five_MinuteTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LoggedOn] [dbo].[DBINT] NULL,
	[Avail] [dbo].[DBINT] NULL,
	[Ready] [dbo].[DBINT] NULL,
	[NotReady] [dbo].[DBINT] NULL,
	[TalkingIn] [dbo].[DBINT] NULL,
	[TalkingOut] [dbo].[DBINT] NULL,
	[TalkingOther] [dbo].[DBINT] NULL,
	[WorkReady] [dbo].[DBINT] NULL,
	[WorkNotReady] [dbo].[DBINT] NULL,
	[AvgHandledCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[AvgHandledCallsTimeTo5] [dbo].[DBINT] NULL,
	[PercentUtilizationTo5] [dbo].[DBFLT4] NULL,
	[Unused1] [dbo].[DBINT] NULL,
	[AvailTimeTo5] [dbo].[DBINT] NULL,
	[NotReadyTimeTo5] [dbo].[DBINT] NULL,
	[TalkTimeTo5] [dbo].[DBINT] NULL,
	[WorkReadyTimeTo5] [dbo].[DBINT] NULL,
	[WorkNotReadyTimeTo5] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[BusyOther] [dbo].[DBINT] NULL,
	[BusyOtherTimeTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[ReservedStateTimeTo5] [dbo].[DBINT] NULL,
	[LongestAvailAgent] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skill_Group_Five_MinuteTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_Group_Five_MinuteTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LoggedOn] [dbo].[DBINT] NULL,
	[Avail] [dbo].[DBINT] NULL,
	[Ready] [dbo].[DBINT] NULL,
	[NotReady] [dbo].[DBINT] NULL,
	[TalkingIn] [dbo].[DBINT] NULL,
	[TalkingOut] [dbo].[DBINT] NULL,
	[TalkingOther] [dbo].[DBINT] NULL,
	[WorkReady] [dbo].[DBINT] NULL,
	[WorkNotReady] [dbo].[DBINT] NULL,
	[AvgHandledCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[AvgHandledCallsTimeTo5] [dbo].[DBINT] NULL,
	[PercentUtilizationTo5] [dbo].[DBFLT4] NULL,
	[Unused1] [dbo].[DBINT] NULL,
	[AvailTimeTo5] [dbo].[DBINT] NULL,
	[NotReadyTimeTo5] [dbo].[DBINT] NULL,
	[TalkTimeTo5] [dbo].[DBINT] NULL,
	[WorkReadyTimeTo5] [dbo].[DBINT] NULL,
	[WorkNotReadyTimeTo5] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[BusyOther] [dbo].[DBINT] NULL,
	[BusyOtherTimeTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[ReservedStateTimeTo5] [dbo].[DBINT] NULL,
	[LongestAvailAgent] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skill_Group_Half_HourTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_Group_Half_HourTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallbackMessagesToHalf] [dbo].[DBINT] NULL,
	[CallbackMessagesTimeToHalf] [dbo].[DBINT] NULL,
	[AvgHandledCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsToHalf] [dbo].[DBINT] NULL,
	[InternalCallsTimeToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsToHalf] [dbo].[DBINT] NULL,
	[AvgHandledCallsTimeToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PercentUtilizationToHalf] [dbo].[DBFLT4] NULL,
	[AgentOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[TalkInTimeToHalf] [dbo].[DBINT] NULL,
	[LoggedOnTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsToHalf] [dbo].[DBINT] NULL,
	[TalkOutTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOtherTimeToHalf] [dbo].[DBINT] NULL,
	[AvailTimeToHalf] [dbo].[DBINT] NULL,
	[NotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[TransferInCallsToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[TransferInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[WorkReadyTimeToHalf] [dbo].[DBINT] NULL,
	[TransferOutCallsToHalf] [dbo].[DBINT] NULL,
	[WorkNotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[BusyOtherTimeToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[ReservedStateTimeToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonRingCallsToHalf] [dbo].[DBINT] NULL,
	[AbandonRingTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldCallsToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[AgentTerminatedCallsToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[TalkAutoOutTimeToHalf] [dbo].[DBINT] NULL,
	[TalkPreviewTimeToHalf] [dbo].[DBINT] NULL,
	[TalkReserveTimeToHalf] [dbo].[DBINT] NULL,
	[BargeInCallsToHalf] [dbo].[DBINT] NULL,
	[InterceptCallsToHalf] [dbo].[DBINT] NULL,
	[MonitorCallsToHalf] [dbo].[DBINT] NULL,
	[WhisperCallsToHalf] [dbo].[DBINT] NULL,
	[EmergencyAssistsToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[CallsQueuedToHalf] [dbo].[DBINT] NULL,
	[InterruptedTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldCallsOutToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[NetConfOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetTransferOutCallsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgentToHalf] [dbo].[DBINT] NULL,
	[RouterCallsDequeuedToHalf] [dbo].[DBINT] NULL,
	[RouterErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeueToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelRONAToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeuedToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skill_Group_Half_HourTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_Group_Half_HourTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallbackMessagesToHalf] [dbo].[DBINT] NULL,
	[CallbackMessagesTimeToHalf] [dbo].[DBINT] NULL,
	[AvgHandledCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsToHalf] [dbo].[DBINT] NULL,
	[InternalCallsTimeToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsToHalf] [dbo].[DBINT] NULL,
	[AvgHandledCallsTimeToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PercentUtilizationToHalf] [dbo].[DBFLT4] NULL,
	[AgentOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[TalkInTimeToHalf] [dbo].[DBINT] NULL,
	[LoggedOnTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsToHalf] [dbo].[DBINT] NULL,
	[TalkOutTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOtherTimeToHalf] [dbo].[DBINT] NULL,
	[AvailTimeToHalf] [dbo].[DBINT] NULL,
	[NotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[TransferInCallsToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[TransferInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[WorkReadyTimeToHalf] [dbo].[DBINT] NULL,
	[TransferOutCallsToHalf] [dbo].[DBINT] NULL,
	[WorkNotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[BusyOtherTimeToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[ReservedStateTimeToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonRingCallsToHalf] [dbo].[DBINT] NULL,
	[AbandonRingTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldCallsToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[AgentTerminatedCallsToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[TalkAutoOutTimeToHalf] [dbo].[DBINT] NULL,
	[TalkPreviewTimeToHalf] [dbo].[DBINT] NULL,
	[TalkReserveTimeToHalf] [dbo].[DBINT] NULL,
	[BargeInCallsToHalf] [dbo].[DBINT] NULL,
	[InterceptCallsToHalf] [dbo].[DBINT] NULL,
	[MonitorCallsToHalf] [dbo].[DBINT] NULL,
	[WhisperCallsToHalf] [dbo].[DBINT] NULL,
	[EmergencyAssistsToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[CallsQueuedToHalf] [dbo].[DBINT] NULL,
	[InterruptedTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldCallsOutToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[NetConfOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetTransferOutCallsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgentToHalf] [dbo].[DBINT] NULL,
	[RouterCallsDequeuedToHalf] [dbo].[DBINT] NULL,
	[RouterErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeueToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelRONAToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeuedToHalf] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skill_Group_IntervalTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_Group_IntervalTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallbackMessages] [dbo].[DBINT] NULL,
	[CallbackMessagesTime] [dbo].[DBINT] NULL,
	[AvgHandledCallsTalkTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[HandledCallsTalkTime] [dbo].[DBINT] NULL,
	[InternalCalls] [dbo].[DBINT] NULL,
	[InternalCallsTime] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[SupervAssistCalls] [dbo].[DBINT] NULL,
	[AvgHandledCallsTime] [dbo].[DBINT] NULL,
	[SupervAssistCallsTime] [dbo].[DBINT] NULL,
	[HandledCallsTime] [dbo].[DBINT] NULL,
	[PercentUtilization] [dbo].[DBFLT4] NULL,
	[AgentOutCallsTime] [dbo].[DBINT] NULL,
	[TalkInTime] [dbo].[DBINT] NULL,
	[LoggedOnTime] [dbo].[DBINT] NULL,
	[AgentOutCalls] [dbo].[DBINT] NULL,
	[TalkOutTime] [dbo].[DBINT] NULL,
	[TalkOtherTime] [dbo].[DBINT] NULL,
	[AvailTime] [dbo].[DBINT] NULL,
	[NotReadyTime] [dbo].[DBINT] NULL,
	[TransferInCalls] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[TransferInCallsTime] [dbo].[DBINT] NULL,
	[WorkReadyTime] [dbo].[DBINT] NULL,
	[TransferOutCalls] [dbo].[DBINT] NULL,
	[WorkNotReadyTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[BusyOtherTime] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[ReservedStateTime] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AbandonRingCalls] [dbo].[DBINT] NULL,
	[AbandonRingTime] [dbo].[DBINT] NULL,
	[AbandonHoldCalls] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHold] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[AgentTerminatedCalls] [dbo].[DBINT] NULL,
	[ConsultativeCalls] [dbo].[DBINT] NULL,
	[ConsultativeCallsTime] [dbo].[DBINT] NULL,
	[ConferencedInCalls] [dbo].[DBINT] NULL,
	[ConferencedInCallsTime] [dbo].[DBINT] NULL,
	[ConferencedOutCalls] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTime] [dbo].[DBINT] NULL,
	[InternalCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTime] [dbo].[DBINT] NULL,
	[InternalCallsRcvd] [dbo].[DBINT] NULL,
	[RedirectNoAnsCalls] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTime] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[AutoOutCalls] [dbo].[DBINT] NULL,
	[AutoOutCallsTime] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHold] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[PreviewCalls] [dbo].[DBINT] NULL,
	[PreviewCallsTime] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTime] [dbo].[DBINT] NULL,
	[PreviewCallsOnHold] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTime] [dbo].[DBINT] NULL,
	[ReserveCalls] [dbo].[DBINT] NULL,
	[ReserveCallsTime] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTime] [dbo].[DBINT] NULL,
	[ReserveCallsOnHold] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTime] [dbo].[DBINT] NULL,
	[TalkAutoOutTime] [dbo].[DBINT] NULL,
	[TalkPreviewTime] [dbo].[DBINT] NULL,
	[TalkReserveTime] [dbo].[DBINT] NULL,
	[BargeInCalls] [dbo].[DBINT] NULL,
	[InterceptCalls] [dbo].[DBINT] NULL,
	[MonitorCalls] [dbo].[DBINT] NULL,
	[WhisperCalls] [dbo].[DBINT] NULL,
	[EmergencyAssists] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[CallsQueued] [dbo].[DBINT] NULL,
	[InterruptedTime] [dbo].[DBINT] NULL,
	[AbandonHoldCallsOut] [dbo].[DBINT] NULL,
	[NetConsultativeCalls] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTime] [dbo].[DBINT] NULL,
	[NetConferencedOutCalls] [dbo].[DBINT] NULL,
	[NetConfOutCallsTime] [dbo].[DBINT] NULL,
	[NetTransferOutCalls] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOffered] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgent] [dbo].[DBINT] NULL,
	[RouterCallsDequeued] [dbo].[DBINT] NULL,
	[RouterError] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelCallsAband] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeue] [dbo].[DBINT] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeued] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[ConsultOutCalls] [dbo].[DBINT] NULL,
	[ConsultOutCallsTime] [dbo].[DBINT] NULL,
	[RouterDelayQAbandTime] [dbo].[DBINT] NULL,
	[RouterAbandInterval1] [dbo].[DBINT] NULL,
	[RouterAbandInterval2] [dbo].[DBINT] NULL,
	[RouterAbandInterval3] [dbo].[DBINT] NULL,
	[RouterAbandInterval4] [dbo].[DBINT] NULL,
	[RouterAbandInterval5] [dbo].[DBINT] NULL,
	[RouterAbandInterval6] [dbo].[DBINT] NULL,
	[RouterAbandInterval7] [dbo].[DBINT] NULL,
	[RouterAbandInterval8] [dbo].[DBINT] NULL,
	[RouterAbandInterval9] [dbo].[DBINT] NULL,
	[RouterAbandInterval10] [dbo].[DBINT] NULL,
	[RouterAnsInterval1] [dbo].[DBINT] NULL,
	[RouterAnsInterval2] [dbo].[DBINT] NULL,
	[RouterAnsInterval3] [dbo].[DBINT] NULL,
	[RouterAnsInterval4] [dbo].[DBINT] NULL,
	[RouterAnsInterval5] [dbo].[DBINT] NULL,
	[RouterAnsInterval6] [dbo].[DBINT] NULL,
	[RouterAnsInterval7] [dbo].[DBINT] NULL,
	[RouterAnsInterval8] [dbo].[DBINT] NULL,
	[RouterAnsInterval9] [dbo].[DBINT] NULL,
	[RouterAnsInterval10] [dbo].[DBINT] NULL,
	[RouterMaxCallsQueued] [dbo].[DBINT] NULL,
	[RouterMaxCallWaitTime] [dbo].[DBINT] NULL,
	[PrecisionQueueID] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skill_Group_IntervalTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_Group_IntervalTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallbackMessages] [dbo].[DBINT] NULL,
	[CallbackMessagesTime] [dbo].[DBINT] NULL,
	[AvgHandledCallsTalkTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[HandledCallsTalkTime] [dbo].[DBINT] NULL,
	[InternalCalls] [dbo].[DBINT] NULL,
	[InternalCallsTime] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[SupervAssistCalls] [dbo].[DBINT] NULL,
	[AvgHandledCallsTime] [dbo].[DBINT] NULL,
	[SupervAssistCallsTime] [dbo].[DBINT] NULL,
	[HandledCallsTime] [dbo].[DBINT] NULL,
	[PercentUtilization] [dbo].[DBFLT4] NULL,
	[AgentOutCallsTime] [dbo].[DBINT] NULL,
	[TalkInTime] [dbo].[DBINT] NULL,
	[LoggedOnTime] [dbo].[DBINT] NULL,
	[AgentOutCalls] [dbo].[DBINT] NULL,
	[TalkOutTime] [dbo].[DBINT] NULL,
	[TalkOtherTime] [dbo].[DBINT] NULL,
	[AvailTime] [dbo].[DBINT] NULL,
	[NotReadyTime] [dbo].[DBINT] NULL,
	[TransferInCalls] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[TransferInCallsTime] [dbo].[DBINT] NULL,
	[WorkReadyTime] [dbo].[DBINT] NULL,
	[TransferOutCalls] [dbo].[DBINT] NULL,
	[WorkNotReadyTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[BusyOtherTime] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[ReservedStateTime] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AbandonRingCalls] [dbo].[DBINT] NULL,
	[AbandonRingTime] [dbo].[DBINT] NULL,
	[AbandonHoldCalls] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHold] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[AgentTerminatedCalls] [dbo].[DBINT] NULL,
	[ConsultativeCalls] [dbo].[DBINT] NULL,
	[ConsultativeCallsTime] [dbo].[DBINT] NULL,
	[ConferencedInCalls] [dbo].[DBINT] NULL,
	[ConferencedInCallsTime] [dbo].[DBINT] NULL,
	[ConferencedOutCalls] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTime] [dbo].[DBINT] NULL,
	[InternalCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTime] [dbo].[DBINT] NULL,
	[InternalCallsRcvd] [dbo].[DBINT] NULL,
	[RedirectNoAnsCalls] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTime] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[AutoOutCalls] [dbo].[DBINT] NULL,
	[AutoOutCallsTime] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHold] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[PreviewCalls] [dbo].[DBINT] NULL,
	[PreviewCallsTime] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTime] [dbo].[DBINT] NULL,
	[PreviewCallsOnHold] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTime] [dbo].[DBINT] NULL,
	[ReserveCalls] [dbo].[DBINT] NULL,
	[ReserveCallsTime] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTime] [dbo].[DBINT] NULL,
	[ReserveCallsOnHold] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTime] [dbo].[DBINT] NULL,
	[TalkAutoOutTime] [dbo].[DBINT] NULL,
	[TalkPreviewTime] [dbo].[DBINT] NULL,
	[TalkReserveTime] [dbo].[DBINT] NULL,
	[BargeInCalls] [dbo].[DBINT] NULL,
	[InterceptCalls] [dbo].[DBINT] NULL,
	[MonitorCalls] [dbo].[DBINT] NULL,
	[WhisperCalls] [dbo].[DBINT] NULL,
	[EmergencyAssists] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[CallsQueued] [dbo].[DBINT] NULL,
	[InterruptedTime] [dbo].[DBINT] NULL,
	[AbandonHoldCallsOut] [dbo].[DBINT] NULL,
	[NetConsultativeCalls] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTime] [dbo].[DBINT] NULL,
	[NetConferencedOutCalls] [dbo].[DBINT] NULL,
	[NetConfOutCallsTime] [dbo].[DBINT] NULL,
	[NetTransferOutCalls] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOffered] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgent] [dbo].[DBINT] NULL,
	[RouterCallsDequeued] [dbo].[DBINT] NULL,
	[RouterError] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelCallsAband] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeue] [dbo].[DBINT] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeued] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[ConsultOutCalls] [dbo].[DBINT] NULL,
	[ConsultOutCallsTime] [dbo].[DBINT] NULL,
	[RouterDelayQAbandTime] [dbo].[DBINT] NULL,
	[RouterAbandInterval1] [dbo].[DBINT] NULL,
	[RouterAbandInterval2] [dbo].[DBINT] NULL,
	[RouterAbandInterval3] [dbo].[DBINT] NULL,
	[RouterAbandInterval4] [dbo].[DBINT] NULL,
	[RouterAbandInterval5] [dbo].[DBINT] NULL,
	[RouterAbandInterval6] [dbo].[DBINT] NULL,
	[RouterAbandInterval7] [dbo].[DBINT] NULL,
	[RouterAbandInterval8] [dbo].[DBINT] NULL,
	[RouterAbandInterval9] [dbo].[DBINT] NULL,
	[RouterAbandInterval10] [dbo].[DBINT] NULL,
	[RouterAnsInterval1] [dbo].[DBINT] NULL,
	[RouterAnsInterval2] [dbo].[DBINT] NULL,
	[RouterAnsInterval3] [dbo].[DBINT] NULL,
	[RouterAnsInterval4] [dbo].[DBINT] NULL,
	[RouterAnsInterval5] [dbo].[DBINT] NULL,
	[RouterAnsInterval6] [dbo].[DBINT] NULL,
	[RouterAnsInterval7] [dbo].[DBINT] NULL,
	[RouterAnsInterval8] [dbo].[DBINT] NULL,
	[RouterAnsInterval9] [dbo].[DBINT] NULL,
	[RouterAnsInterval10] [dbo].[DBINT] NULL,
	[RouterMaxCallsQueued] [dbo].[DBINT] NULL,
	[RouterMaxCallWaitTime] [dbo].[DBINT] NULL,
	[PrecisionQueueID] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skill_Target]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill_Target](
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillTargetType] [dbo].[DBSMALLINT] NOT NULL,
 CONSTRAINT [XPKSkill_Target] PRIMARY KEY CLUSTERED 
(
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[System_Capacity_IntervalTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[System_Capacity_IntervalTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[ICRInstanceID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NOT NULL,
	[MaxAgentsLoggedIn] [dbo].[DBINT] NULL,
	[MaxCPS] [dbo].[DBINT] NULL,
	[MaxCVPCallControlPorts] [dbo].[DBINT] NULL,
	[MaxVRUPorts] [dbo].[DBINT] NULL,
	[MaxCallsInProgress] [dbo].[DBINT] NULL,
	[MaxAgentQueuePairs] [dbo].[DBINT] NULL,
	[MaxCallTypeSkillGroupPairs] [dbo].[DBINT] NULL,
	[MaxCongestionLevel] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[System_Capacity_IntervalTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[System_Capacity_IntervalTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[ICRInstanceID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NOT NULL,
	[MaxAgentsLoggedIn] [dbo].[DBINT] NULL,
	[MaxCPS] [dbo].[DBINT] NULL,
	[MaxCVPCallControlPorts] [dbo].[DBINT] NULL,
	[MaxVRUPorts] [dbo].[DBINT] NULL,
	[MaxCallsInProgress] [dbo].[DBINT] NULL,
	[MaxAgentQueuePairs] [dbo].[DBINT] NULL,
	[MaxCallTypeSkillGroupPairs] [dbo].[DBINT] NULL,
	[MaxCongestionLevel] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Termination_Call_DetailTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Termination_Call_DetailTmp1](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NULL,
	[AgentSkillTargetID] [dbo].[DBINT] NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[ServiceSkillTargetID] [dbo].[DBINT] NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[RouteID] [dbo].[DBINT] NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NULL,
	[RouterCallKey] [dbo].[DBINT] NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[PeripheralCallType] [dbo].[DBSMALLINT] NULL,
	[DigitsDialed] [varchar](40) NULL,
	[PeripheralCallKey] [dbo].[DBINT] NULL,
	[CallDisposition] [dbo].[DBSMALLINT] NOT NULL,
	[NetworkTime] [dbo].[DBINT] NULL,
	[Duration] [dbo].[DBINT] NULL,
	[RingTime] [dbo].[DBINT] NULL,
	[DelayTime] [dbo].[DBINT] NULL,
	[TimeToAband] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[WorkTime] [dbo].[DBINT] NULL,
	[LocalQTime] [dbo].[DBINT] NULL,
	[BillRate] [dbo].[DBSMALLINT] NULL,
	[CallSegmentTime] [dbo].[DBINT] NULL,
	[ConferenceTime] [dbo].[DBINT] NULL,
	[Variable1] [varchar](40) NULL,
	[Variable2] [varchar](40) NULL,
	[Variable3] [varchar](40) NULL,
	[Variable4] [varchar](40) NULL,
	[Variable5] [varchar](40) NULL,
	[UserToUser] [varchar](131) NULL,
	[NewTransaction] [dbo].[DBCHAR] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[TrunkGroupID] [dbo].[DBINT] NULL,
	[DNIS] [dbo].[VNAME32] NULL,
	[InstrumentPortNumber] [dbo].[DBINT] NULL,
	[AgentPeripheralNumber] [varchar](32) NULL,
	[ICRCallKey] [dbo].[DBINT] NOT NULL,
	[ICRCallKeyParent] [dbo].[DBINT] NULL,
	[ICRCallKeyChild] [dbo].[DBINT] NULL,
	[Variable6] [varchar](40) NULL,
	[Variable7] [varchar](40) NULL,
	[Variable8] [varchar](40) NULL,
	[Variable9] [varchar](40) NULL,
	[Variable10] [varchar](40) NULL,
	[ANI] [varchar](32) NULL,
	[AnsweredWithinServiceLevel] [dbo].[DBCHAR] NULL,
	[Priority] [dbo].[DBSMALLINT] NULL,
	[Trunk] [dbo].[DBINT] NULL,
	[WrapupData] [varchar](40) NULL,
	[SourceAgentPeripheralNumber] [varchar](32) NULL,
	[SourceAgentSkillTargetID] [dbo].[DBINT] NULL,
	[CallDispositionFlag] [dbo].[DBINT] NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[CED] [varchar](30) NULL,
	[CallTypeID] [dbo].[DBINT] NULL,
	[BadCallTag] [dbo].[DBCHAR] NULL,
	[ApplicationTaskDisposition] [dbo].[DBINT] NULL,
	[ApplicationData] [varchar](100) NULL,
	[NetQTime] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[ECCPayloadID] [dbo].[DBINT] NULL,
	[CallTypeReportingDateTime] [dbo].[DBDATETIME] NULL,
	[RoutedSkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[RoutedServiceSkillTargetID] [dbo].[DBINT] NULL,
	[RoutedAgentSkillTargetID] [dbo].[DBINT] NULL,
	[Originated] [char](1) NULL,
	[CallReferenceID] [varchar](32) NULL,
	[CallGUID] [varchar](32) NULL,
	[LocationParamPKID] [varchar](128) NULL,
	[LocationParamName] [varchar](50) NULL,
	[PstnTrunkGroupID] [varchar](32) NULL,
	[PstnTrunkGroupChannelNumber] [dbo].[DBINT] NULL,
	[NetworkSkillGroupQTime] [dbo].[DBINT] NULL,
	[EnterpriseQueueTime] [dbo].[DBINT] NULL,
	[StartDateTimeUTC] [dbo].[DBDATETIME] NULL,
	[ProtocolID] [dbo].[DBINT] NULL,
	[PrecisionQueueID] [dbo].[DBINT] NULL,
	[PrecisionQueueStepOrder] [dbo].[DBINT] NULL,
	[Attributes] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Termination_Call_DetailTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Termination_Call_DetailTmp2](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NULL,
	[AgentSkillTargetID] [dbo].[DBINT] NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[ServiceSkillTargetID] [dbo].[DBINT] NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[RouteID] [dbo].[DBINT] NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NULL,
	[RouterCallKey] [dbo].[DBINT] NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[PeripheralCallType] [dbo].[DBSMALLINT] NULL,
	[DigitsDialed] [varchar](40) NULL,
	[PeripheralCallKey] [dbo].[DBINT] NULL,
	[CallDisposition] [dbo].[DBSMALLINT] NOT NULL,
	[NetworkTime] [dbo].[DBINT] NULL,
	[Duration] [dbo].[DBINT] NULL,
	[RingTime] [dbo].[DBINT] NULL,
	[DelayTime] [dbo].[DBINT] NULL,
	[TimeToAband] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[WorkTime] [dbo].[DBINT] NULL,
	[LocalQTime] [dbo].[DBINT] NULL,
	[BillRate] [dbo].[DBSMALLINT] NULL,
	[CallSegmentTime] [dbo].[DBINT] NULL,
	[ConferenceTime] [dbo].[DBINT] NULL,
	[Variable1] [varchar](40) NULL,
	[Variable2] [varchar](40) NULL,
	[Variable3] [varchar](40) NULL,
	[Variable4] [varchar](40) NULL,
	[Variable5] [varchar](40) NULL,
	[UserToUser] [varchar](131) NULL,
	[NewTransaction] [dbo].[DBCHAR] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[TrunkGroupID] [dbo].[DBINT] NULL,
	[DNIS] [dbo].[VNAME32] NULL,
	[InstrumentPortNumber] [dbo].[DBINT] NULL,
	[AgentPeripheralNumber] [varchar](32) NULL,
	[ICRCallKey] [dbo].[DBINT] NOT NULL,
	[ICRCallKeyParent] [dbo].[DBINT] NULL,
	[ICRCallKeyChild] [dbo].[DBINT] NULL,
	[Variable6] [varchar](40) NULL,
	[Variable7] [varchar](40) NULL,
	[Variable8] [varchar](40) NULL,
	[Variable9] [varchar](40) NULL,
	[Variable10] [varchar](40) NULL,
	[ANI] [varchar](32) NULL,
	[AnsweredWithinServiceLevel] [dbo].[DBCHAR] NULL,
	[Priority] [dbo].[DBSMALLINT] NULL,
	[Trunk] [dbo].[DBINT] NULL,
	[WrapupData] [varchar](40) NULL,
	[SourceAgentPeripheralNumber] [varchar](32) NULL,
	[SourceAgentSkillTargetID] [dbo].[DBINT] NULL,
	[CallDispositionFlag] [dbo].[DBINT] NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[CED] [varchar](30) NULL,
	[CallTypeID] [dbo].[DBINT] NULL,
	[BadCallTag] [dbo].[DBCHAR] NULL,
	[ApplicationTaskDisposition] [dbo].[DBINT] NULL,
	[ApplicationData] [varchar](100) NULL,
	[NetQTime] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[ECCPayloadID] [dbo].[DBINT] NULL,
	[CallTypeReportingDateTime] [dbo].[DBDATETIME] NULL,
	[RoutedSkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[RoutedServiceSkillTargetID] [dbo].[DBINT] NULL,
	[RoutedAgentSkillTargetID] [dbo].[DBINT] NULL,
	[Originated] [char](1) NULL,
	[CallReferenceID] [varchar](32) NULL,
	[CallGUID] [varchar](32) NULL,
	[LocationParamPKID] [varchar](128) NULL,
	[LocationParamName] [varchar](50) NULL,
	[PstnTrunkGroupID] [varchar](32) NULL,
	[PstnTrunkGroupChannelNumber] [dbo].[DBINT] NULL,
	[NetworkSkillGroupQTime] [dbo].[DBINT] NULL,
	[EnterpriseQueueTime] [dbo].[DBINT] NULL,
	[StartDateTimeUTC] [dbo].[DBDATETIME] NULL,
	[ProtocolID] [dbo].[DBINT] NULL,
	[PrecisionQueueID] [dbo].[DBINT] NULL,
	[PrecisionQueueStepOrder] [dbo].[DBINT] NULL,
	[Attributes] [varchar](255) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Termination_Call_VariableTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Termination_Call_VariableTmp1](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TCDRecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ExpandedCallVariableID] [dbo].[DBSMALLINT] NOT NULL,
	[ArrayIndex] [dbo].[DBINT] NOT NULL,
	[ECCValue] [varchar](255) NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Termination_Call_VariableTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Termination_Call_VariableTmp2](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TCDRecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ExpandedCallVariableID] [dbo].[DBSMALLINT] NOT NULL,
	[ArrayIndex] [dbo].[DBINT] NOT NULL,
	[ECCValue] [varchar](255) NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Translation_Route_Half_HouTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Translation_Route_Half_HouTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TranslationRouteSkillTargetID] [dbo].[DBINT] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[UsedToHalf] [dbo].[DBINT] NULL,
	[UnAvailableToHalf] [dbo].[DBINT] NULL,
	[RouterTimeOutsToHalf] [dbo].[DBINT] NULL,
	[PGTimeOutsToHalf] [dbo].[DBINT] NULL,
	[AvgRoutesInUseToHalf] [dbo].[DBINT] NULL,
	[MaxRoutesInUseToHalf] [dbo].[DBINT] NULL,
	[RoutedToHalf] [dbo].[DBINT] NULL,
	[AvgRouteTimeToHalf] [dbo].[DBINT] NULL,
	[MaxRouteTimeToHalf] [dbo].[DBINT] NULL,
	[ConfigErrorsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Translation_Route_Half_HouTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Translation_Route_Half_HouTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TranslationRouteSkillTargetID] [dbo].[DBINT] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[UsedToHalf] [dbo].[DBINT] NULL,
	[UnAvailableToHalf] [dbo].[DBINT] NULL,
	[RouterTimeOutsToHalf] [dbo].[DBINT] NULL,
	[PGTimeOutsToHalf] [dbo].[DBINT] NULL,
	[AvgRoutesInUseToHalf] [dbo].[DBINT] NULL,
	[MaxRoutesInUseToHalf] [dbo].[DBINT] NULL,
	[RoutedToHalf] [dbo].[DBINT] NULL,
	[AvgRouteTimeToHalf] [dbo].[DBINT] NULL,
	[MaxRouteTimeToHalf] [dbo].[DBINT] NULL,
	[ConfigErrorsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trunk_Group_Five_MinuteTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trunk_Group_Five_MinuteTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TrunkGroupID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[TrunksInService] [dbo].[DBINT] NULL,
	[AllTrunksBusyToHalf] [dbo].[DBINT] NULL,
	[TrunksIdle] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trunk_Group_Five_MinuteTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trunk_Group_Five_MinuteTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TrunkGroupID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[TrunksInService] [dbo].[DBINT] NULL,
	[AllTrunksBusyToHalf] [dbo].[DBINT] NULL,
	[TrunksIdle] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trunk_Group_Half_HourTmp1]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trunk_Group_Half_HourTmp1](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TrunkGroupID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsAbandonedToHalf] [dbo].[DBINT] NULL,
	[CallsInToHalf] [dbo].[DBINT] NULL,
	[TrunksInService] [dbo].[DBINT] NULL,
	[CallsOutToHalf] [dbo].[DBINT] NULL,
	[AllTrunksBusyToHalf] [dbo].[DBINT] NULL,
	[InServiceTimeToHalf] [dbo].[DBINT] NULL,
	[TrunksIdle] [dbo].[DBINT] NULL,
	[InUseInboundTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[InUseOutboundTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Trunk_Group_Half_HourTmp2]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trunk_Group_Half_HourTmp2](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TrunkGroupID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsAbandonedToHalf] [dbo].[DBINT] NULL,
	[CallsInToHalf] [dbo].[DBINT] NULL,
	[TrunksInService] [dbo].[DBINT] NULL,
	[CallsOutToHalf] [dbo].[DBINT] NULL,
	[AllTrunksBusyToHalf] [dbo].[DBINT] NULL,
	[InServiceTimeToHalf] [dbo].[DBINT] NULL,
	[TrunksIdle] [dbo].[DBINT] NULL,
	[InUseInboundTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[InUseOutboundTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Group]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Group](
	[UserGroupID] [dbo].[DBINT] NOT NULL,
	[CustomerDefinitionID] [dbo].[DBINT] NULL,
	[UserGroupName] [varchar](64) NOT NULL,
	[UserGroupType] [char](1) NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ServiceProvider] [dbo].[DBCHAR] NOT NULL,
	[ReadOnly] [dbo].[DBCHAR] NOT NULL,
	[FeatureSetID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[UserGuid] [varchar](64) NULL,
	[UserName] [varchar](64) NULL,
	[DomainName] [varchar](190) NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKUser_Group] PRIMARY KEY NONCLUSTERED 
(
	[UserGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1User_Group] UNIQUE CLUSTERED 
(
	[UserGroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Group_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Group_Member](
	[UserGroupMemberID] [dbo].[DBINT] NOT NULL,
	[UserGroupName] [varchar](64) NOT NULL,
	[UserName] [varchar](64) NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKUser_Group_Member] PRIMARY KEY NONCLUSTERED 
(
	[UserGroupMemberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1User_Group_Member] UNIQUE CLUSTERED 
(
	[UserName] ASC,
	[UserGroupName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Security_Control]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Security_Control](
	[ObjectType] [dbo].[DBINT] NOT NULL,
	[ObjectID] [dbo].[DBINT] NOT NULL,
	[UserName] [varchar](64) NOT NULL,
	[AccessLevel] [dbo].[DBINT] NOT NULL,
	[UserGroupID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKUser_Security_Control] PRIMARY KEY CLUSTERED 
(
	[ObjectType] ASC,
	[ObjectID] ASC,
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Supervisor_Map]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Supervisor_Map](
	[UserGroupID] [dbo].[DBINT] NOT NULL,
	[AgentSkillTargetID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKUserSupervisorMap] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[AgentSkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1UserSupervisorMap] UNIQUE NONCLUSTERED 
(
	[AgentSkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Version]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Version](
	[Major] [dbo].[DBINT] NOT NULL,
	[CCMinor] [dbo].[DBINT] NOT NULL,
	[AWMinor] [dbo].[DBINT] NOT NULL,
	[IPCCMinor] [dbo].[DBINT] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ViewType]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ViewType](
	[One] [int] NOT NULL,
	[PartitioningIndicator] [char](1) NULL,
 CONSTRAINT [Pk_ViewType] PRIMARY KEY CLUSTERED 
(
	[One] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[View_Column]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[View_Column](
	[ViewColumnID] [dbo].[DBINT] NOT NULL,
	[ICRViewID] [dbo].[DBINT] NOT NULL,
	[ColumnNumber] [dbo].[DBINT] NOT NULL,
	[BaseName] [dbo].[VNAME32] NULL,
	[ViewName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Shift] [dbo].[DBINT] NULL,
	[Mask] [dbo].[DBINT] NULL,
	[Edit] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKView_Column] PRIMARY KEY CLUSTERED 
(
	[ViewColumnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1View_Column] UNIQUE NONCLUSTERED 
(
	[ICRViewID] ASC,
	[ColumnNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK2View_Column] UNIQUE NONCLUSTERED 
(
	[ICRViewID] ASC,
	[ViewName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vru_Currency]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vru_Currency](
	[CurrencyID] [dbo].[DBINT] NOT NULL,
	[CurrencyName] [varchar](10) NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKVru_Currency] PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Vru_Currency] UNIQUE NONCLUSTERED 
(
	[CurrencyName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vru_Defaults]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vru_Defaults](
	[VruDefaultsID] [dbo].[DBINT] NOT NULL,
	[CurrencyID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[LocaleID] [dbo].[DBINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[MediaServerSet] [varchar](255) NOT NULL,
	[SystemMediaLib] [varchar](255) NULL,
	[AppMediaLib] [varchar](255) NULL,
	[DTMFTermKey] [char](1) NOT NULL,
	[NoEntryTimeout] [dbo].[DBINT] NOT NULL,
	[InterDigitTimeout] [dbo].[DBINT] NOT NULL,
	[NoEntryTries] [dbo].[DBINT] NOT NULL,
	[InvalidEntryTries] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKVru_Defaults] PRIMARY KEY CLUSTERED 
(
	[VruDefaultsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Vru_Defaults] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Vru_Locale]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Vru_Locale](
	[LocaleID] [dbo].[DBINT] NOT NULL,
	[Locale] [varchar](10) NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKVru_Locale] PRIMARY KEY CLUSTERED 
(
	[LocaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Vru_Locale] UNIQUE NONCLUSTERED 
(
	[Locale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Admin_Script_Schedule_Map]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Admin_Script_Schedule_Map](
	[MasterScriptID] [dbo].[DBINT] NOT NULL,
	[SequenceNumber] [dbo].[DBINT] NOT NULL,
	[Type] [dbo].[DBSMALLINT] NOT NULL,
	[MonthOfYear] [dbo].[DBSMALLINT] NOT NULL,
	[DayOfMonth] [dbo].[DBSMALLINT] NOT NULL,
	[DayType] [dbo].[DBSMALLINT] NOT NULL,
	[DayPosition] [dbo].[DBSMALLINT] NOT NULL,
	[DayFlags] [dbo].[DBINT] NOT NULL,
	[StartMonth] [dbo].[DBSMALLINT] NOT NULL,
	[StartDay] [dbo].[DBSMALLINT] NOT NULL,
	[StartYear] [dbo].[DBINT] NOT NULL,
	[EndMonth] [dbo].[DBSMALLINT] NOT NULL,
	[EndDay] [dbo].[DBSMALLINT] NOT NULL,
	[EndYear] [dbo].[DBINT] NOT NULL,
	[StartHour] [dbo].[DBSMALLINT] NOT NULL,
	[StartMinute] [dbo].[DBSMALLINT] NOT NULL,
	[StartSecond] [dbo].[DBSMALLINT] NOT NULL,
	[EndHour] [dbo].[DBSMALLINT] NOT NULL,
	[EndMinute] [dbo].[DBSMALLINT] NOT NULL,
	[EndSecond] [dbo].[DBSMALLINT] NOT NULL,
	[Recurrence] [dbo].[DBSMALLINT] NOT NULL,
	[RecurrenceFreq] [dbo].[DBINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
 CONSTRAINT [XPKAdmin_Script_Schedule_Map] PRIMARY KEY CLUSTERED 
(
	[MasterScriptID] ASC,
	[SequenceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Agent]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Agent](
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[PersonID] [dbo].[DBINT] NOT NULL,
	[AgentDeskSettingsID] [dbo].[DBINT] NULL,
	[ScheduleID] [dbo].[DBINT] NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[PeripheralNumber] [varchar](32) NOT NULL,
	[ConfigParam] [varchar](255) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[PeripheralName] [dbo].[VNAME32] NULL,
	[TemporaryAgent] [dbo].[DBCHAR] NOT NULL,
	[AgentStateTrace] [dbo].[DBCHAR] NOT NULL,
	[SupervisorAgent] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[UserDeletable] [dbo].[DBCHAR] NOT NULL,
	[DefaultSkillGroup] [dbo].[DBINT] NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAgent] PRIMARY KEY CLUSTERED 
(
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent] UNIQUE NONCLUSTERED 
(
	[PeripheralID] ASC,
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK2Agent] UNIQUE NONCLUSTERED 
(
	[PeripheralID] ASC,
	[PeripheralNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Agent_Attribute]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Agent_Attribute](
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[AttributeID] [dbo].[DBINT] NOT NULL,
	[AttributeValue] [varchar](255) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
 CONSTRAINT [XPKAgent_Attribute] PRIMARY KEY CLUSTERED 
(
	[SkillTargetID] ASC,
	[AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Agent_Desk_Settings]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Agent_Desk_Settings](
	[AgentDeskSettingsID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[AvailAfterIncoming] [dbo].[DBCHAR] NOT NULL,
	[AvailAfterOutgoing] [dbo].[DBCHAR] NOT NULL,
	[WrapupDataIncomingMode] [dbo].[DBINT] NOT NULL,
	[WrapupDataOutgoingMode] [dbo].[DBINT] NOT NULL,
	[AutoAnswerEnabled] [dbo].[DBCHAR] NOT NULL,
	[IdleReasonRequired] [dbo].[DBCHAR] NOT NULL,
	[LogoutNonActivityTime] [dbo].[DBINT] NULL,
	[LogoutReasonRequired] [dbo].[DBCHAR] NOT NULL,
	[SupervisorCallsAllowed] [dbo].[DBCHAR] NOT NULL,
	[SupervisorAssistCallMethod] [dbo].[DBINT] NULL,
	[EmergencyCallMethod] [dbo].[DBINT] NULL,
	[AutoRecordOnEmergency] [dbo].[DBINT] NULL,
	[AgentToAgentCallsAllowed] [dbo].[DBCHAR] NOT NULL,
	[OutboundAccessInternational] [dbo].[DBCHAR] NOT NULL,
	[OutboundAccessPublicNet] [dbo].[DBCHAR] NOT NULL,
	[OutboundAccessPrivateNet] [dbo].[DBCHAR] NOT NULL,
	[OutboundAccessOperatorAssisted] [dbo].[DBCHAR] NOT NULL,
	[OutboundAccessPBX] [dbo].[DBCHAR] NOT NULL,
	[NonACDCallsAllowed] [dbo].[DBCHAR] NOT NULL,
	[QualityRecordingRate] [dbo].[DBINT] NULL,
	[RecordingMode] [dbo].[DBINT] NULL,
	[WorkModeTimer] [dbo].[DBINT] NULL,
	[RingNoAnswerDialedNumberID] [dbo].[DBINT] NULL,
	[RingNoAnswerTime] [dbo].[DBINT] NULL,
	[SilentMonitorWarningMessage] [dbo].[DBINT] NULL,
	[SilentMonitorAudibleIndication] [dbo].[DBINT] NULL,
	[DefaultDevicePortAddress] [dbo].[VNAME32] NULL,
	[AgentCanSelectGroup] [dbo].[DBCHAR] NOT NULL,
	[RemoteAgentType] [dbo].[DBSMALLINT] NOT NULL,
	[RemoteLoginWithoutDesktop] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[MultilineAgentControl] [dbo].[DBINT] NOT NULL,
	[MultilineAgentStateBehavior] [dbo].[DBINT] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAgent_Desk_Settings] PRIMARY KEY CLUSTERED 
(
	[AgentDeskSettingsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Desk_Settings] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Agent_Distribution]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Agent_Distribution](
	[AgentDistributionID] [dbo].[DBINT] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[DistributorSiteName] [dbo].[VNAME32] NOT NULL,
	[Enabled] [dbo].[DBCHAR] NOT NULL,
	[AgentHistoricalData] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAgent_Distribution] PRIMARY KEY CLUSTERED 
(
	[AgentDistributionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Distribution] UNIQUE NONCLUSTERED 
(
	[PeripheralID] ASC,
	[DistributorSiteName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Agent_Event_Detail]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Agent_Event_Detail](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LoginDateTime] [dbo].[DBDATETIME] NOT NULL,
	[Event] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[Duration] [dbo].[DBINT] NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAgent_Event_Detail] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[MRDomainID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Event_Detail] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Agent_Half_Hour]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Agent_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LoggedOnTimeToHalf] [dbo].[DBINT] NULL,
	[AvailTimeToHalf] [dbo].[DBINT] NULL,
	[NotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOtherTimeToHalf] [dbo].[DBINT] NULL,
	[AvailableInMRDTimeToHalf] [dbo].[DBINT] NULL,
	[RoutableInMRDTimeToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandToHalf] [dbo].[DBINT] NULL,
	[RouterCallsDequeuedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsRedirectedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[RouterCallsHandledToHalf] [dbo].[DBINT] NULL,
	[RouterErrorToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
 CONSTRAINT [XPKAgent_Half_Hour] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[TimeZone] ASC,
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Half_Hour] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Agent_Interval]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Agent_Interval](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LoggedOnTime] [dbo].[DBINT] NULL,
	[AvailTime] [dbo].[DBINT] NULL,
	[NotReadyTime] [dbo].[DBINT] NULL,
	[TalkOtherTime] [dbo].[DBINT] NULL,
	[AvailableInMRDTime] [dbo].[DBINT] NULL,
	[RoutableInMRDTime] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOffered] [dbo].[DBINT] NULL,
	[RouterCallsAband] [dbo].[DBINT] NULL,
	[RouterCallsDequeued] [dbo].[DBINT] NULL,
	[RouterCallsRedirected] [dbo].[DBINT] NULL,
	[RouterCallsAnswered] [dbo].[DBINT] NULL,
	[RouterCallsHandled] [dbo].[DBINT] NULL,
	[RouterError] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[NonACDLineCallsInCount] [dbo].[DBINT] NULL,
	[NonACDLineCallsOutCount] [dbo].[DBINT] NULL,
	[NonACDLineCallsInTime] [dbo].[DBINT] NULL,
	[NonACDLineCallsOutTime] [dbo].[DBINT] NULL,
	[Extension] [varchar](32) NULL,
 CONSTRAINT [XPKAgent_Interval] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[TimeZone] ASC,
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Interval] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Agent_Logout]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Agent_Logout](
	[LogoutDateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[LoginDuration] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[Extension] [varchar](32) NULL,
	[PhoneType] [dbo].[DBSMALLINT] NULL,
	[RemotePhoneNumber] [varchar](32) NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAgent_Logout] PRIMARY KEY CLUSTERED 
(
	[LogoutDateTime] ASC,
	[SkillTargetID] ASC,
	[TimeZone] ASC,
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Logout] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Agent_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Agent_Real_Time](
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[ServiceSkillTargetID] [dbo].[DBINT] NULL,
	[AgentState] [dbo].[DBINT] NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[Extension] [varchar](32) NULL,
	[DateTimeLastStateChange] [dbo].[DBDATETIME] NULL,
	[DateTimeLogin] [dbo].[DBDATETIME] NULL,
	[RequestedSupervisorAssist] [dbo].[DBINT] NULL,
	[Destination] [dbo].[DBINT] NULL,
	[Direction] [dbo].[DBINT] NULL,
	[OnHold] [dbo].[DBINT] NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[AgentStatus] [dbo].[DBINT] NULL,
	[CustomerPhoneNumber] [dbo].[VTELNO20] NULL,
	[CustomerAccountNumber] [varchar](32) NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[QueryRuleID] [dbo].[DBINT] NULL,
	[Routable] [dbo].[DBINT] NULL,
	[DateTimeLastModeChange] [dbo].[DBDATETIME] NULL,
	[CallInProgress] [dbo].[DBINT] NULL,
	[MaxTasks] [dbo].[DBINT] NULL,
	[AvailableInMRD] [dbo].[DBINT] NULL,
	[DateTimeTaskLevelChange] [dbo].[DBDATETIME] NULL,
	[RouterCallsQueueNow] [dbo].[DBINT] NULL,
	[RouterLongestCallQ] [dbo].[DBDATETIME] NULL,
	[PhoneType] [dbo].[DBSMALLINT] NOT NULL,
	[RemotePhoneNumber] [varchar](32) NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKAgent_Real_Time] PRIMARY KEY CLUSTERED 
(
	[SkillTargetID] ASC,
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Agent_Skill_Group_Half_Hour]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Agent_Skill_Group_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AbandonRingCallsToHalf] [dbo].[DBINT] NULL,
	[AbandonRingTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldCallsToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[AgentTerminatedCallsToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvailTimeToHalf] [dbo].[DBINT] NULL,
	[BusyOtherTimeToHalf] [dbo].[DBINT] NULL,
	[CallbackMessagesTimeToHalf] [dbo].[DBINT] NULL,
	[CallbackMessagesToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdToHalf] [dbo].[DBINT] NULL,
	[InternalCallsTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsToHalf] [dbo].[DBINT] NULL,
	[LoggedOnTimeToHalf] [dbo].[DBINT] NULL,
	[NotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReservedStateTimeToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsTimeToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsToHalf] [dbo].[DBINT] NULL,
	[TalkInTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOtherTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOutTimeToHalf] [dbo].[DBINT] NULL,
	[TransferredInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[TransferredInCallsToHalf] [dbo].[DBINT] NULL,
	[TransferredOutCallsToHalf] [dbo].[DBINT] NULL,
	[WorkNotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[WorkReadyTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[TalkAutoOutTimeToHalf] [dbo].[DBINT] NULL,
	[TalkPreviewTimeToHalf] [dbo].[DBINT] NULL,
	[TalkReserveTimeToHalf] [dbo].[DBINT] NULL,
	[BargeInCallsToHalf] [dbo].[DBINT] NULL,
	[InterceptCallsToHalf] [dbo].[DBINT] NULL,
	[MonitorCallsToHalf] [dbo].[DBINT] NULL,
	[WhisperCallsToHalf] [dbo].[DBINT] NULL,
	[EmergencyAssistsToHalf] [dbo].[DBINT] NULL,
	[InterruptedTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldOutCallsToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[NetConfOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetTransferredOutCallsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
 CONSTRAINT [XPKAgent_Skill_Group_Half_Hour] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[SkillGroupSkillTargetID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Skill_Group_Half_Hou] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Agent_Skill_Group_Interval]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Agent_Skill_Group_Interval](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AbandonRingCalls] [dbo].[DBINT] NULL,
	[AbandonRingTime] [dbo].[DBINT] NULL,
	[AbandonHoldCalls] [dbo].[DBINT] NULL,
	[AgentOutCallsTime] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AgentOutCalls] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHold] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[AgentTerminatedCalls] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AvailTime] [dbo].[DBINT] NULL,
	[BusyOtherTime] [dbo].[DBINT] NULL,
	[CallbackMessagesTime] [dbo].[DBINT] NULL,
	[CallbackMessages] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[ConsultativeCalls] [dbo].[DBINT] NULL,
	[ConsultativeCallsTime] [dbo].[DBINT] NULL,
	[ConferencedInCalls] [dbo].[DBINT] NULL,
	[ConferencedInCallsTime] [dbo].[DBINT] NULL,
	[ConferencedOutCalls] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTime] [dbo].[DBINT] NULL,
	[HandledCallsTalkTime] [dbo].[DBINT] NULL,
	[HandledCallsTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTime] [dbo].[DBINT] NULL,
	[InternalCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTime] [dbo].[DBINT] NULL,
	[InternalCallsRcvd] [dbo].[DBINT] NULL,
	[InternalCallsTime] [dbo].[DBINT] NULL,
	[InternalCalls] [dbo].[DBINT] NULL,
	[LoggedOnTime] [dbo].[DBINT] NULL,
	[NotReadyTime] [dbo].[DBINT] NULL,
	[RedirectNoAnsCalls] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTime] [dbo].[DBINT] NULL,
	[ReservedStateTime] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[SupervAssistCallsTime] [dbo].[DBINT] NULL,
	[SupervAssistCalls] [dbo].[DBINT] NULL,
	[TalkInTime] [dbo].[DBINT] NULL,
	[TalkOtherTime] [dbo].[DBINT] NULL,
	[TalkOutTime] [dbo].[DBINT] NULL,
	[TransferredInCallsTime] [dbo].[DBINT] NULL,
	[TransferredInCalls] [dbo].[DBINT] NULL,
	[TransferredOutCalls] [dbo].[DBINT] NULL,
	[WorkNotReadyTime] [dbo].[DBINT] NULL,
	[WorkReadyTime] [dbo].[DBINT] NULL,
	[AutoOutCalls] [dbo].[DBINT] NULL,
	[AutoOutCallsTime] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHold] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[PreviewCalls] [dbo].[DBINT] NULL,
	[PreviewCallsTime] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTime] [dbo].[DBINT] NULL,
	[PreviewCallsOnHold] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTime] [dbo].[DBINT] NULL,
	[ReserveCalls] [dbo].[DBINT] NULL,
	[ReserveCallsTime] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTime] [dbo].[DBINT] NULL,
	[ReserveCallsOnHold] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTime] [dbo].[DBINT] NULL,
	[TalkAutoOutTime] [dbo].[DBINT] NULL,
	[TalkPreviewTime] [dbo].[DBINT] NULL,
	[TalkReserveTime] [dbo].[DBINT] NULL,
	[BargeInCalls] [dbo].[DBINT] NULL,
	[InterceptCalls] [dbo].[DBINT] NULL,
	[MonitorCalls] [dbo].[DBINT] NULL,
	[WhisperCalls] [dbo].[DBINT] NULL,
	[EmergencyAssists] [dbo].[DBINT] NULL,
	[InterruptedTime] [dbo].[DBINT] NULL,
	[AbandonHoldOutCalls] [dbo].[DBINT] NULL,
	[NetConsultativeCalls] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTime] [dbo].[DBINT] NULL,
	[NetConferencedOutCalls] [dbo].[DBINT] NULL,
	[NetConfOutCallsTime] [dbo].[DBINT] NULL,
	[NetTransferredOutCalls] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[ConsultOutCalls] [dbo].[DBINT] NULL,
	[ConsultOutCallsTime] [dbo].[DBINT] NULL,
	[AttributeID1] [dbo].[DBINT] NULL,
	[AttributeID2] [dbo].[DBINT] NULL,
	[AttributeID3] [dbo].[DBINT] NULL,
	[AttributeID4] [dbo].[DBINT] NULL,
	[AttributeID5] [dbo].[DBINT] NULL,
	[AttributeID6] [dbo].[DBINT] NULL,
	[AttributeID7] [dbo].[DBINT] NULL,
	[AttributeID8] [dbo].[DBINT] NULL,
	[AttributeID9] [dbo].[DBINT] NULL,
	[AttributeID10] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKAgent_Skill_Group_Interval] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[SkillGroupSkillTargetID] ASC,
	[PrecisionQueueID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Skill_Group_Interval] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Agent_Skill_Group_Logout]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Agent_Skill_Group_Logout](
	[LogoutDateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LoginDuration] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAgent_Skill_Group_Logout] PRIMARY KEY CLUSTERED 
(
	[LogoutDateTime] ASC,
	[SkillTargetID] ASC,
	[SkillGroupSkillTargetID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Skill_Group_Logout] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Agent_Skill_Group_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Agent_Skill_Group_Real_Time](
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[AgentState] [dbo].[DBINT] NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[DateTimeLastStateChange] [dbo].[DBDATETIME] NULL,
	[DateTimeLogin] [dbo].[DBDATETIME] NULL,
	[Priority] [dbo].[DBINT] NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[AttributeID1] [dbo].[DBINT] NULL,
	[AttributeID2] [dbo].[DBINT] NULL,
	[AttributeID3] [dbo].[DBINT] NULL,
	[AttributeID4] [dbo].[DBINT] NULL,
	[AttributeID5] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[AttributeID6] [dbo].[DBINT] NULL,
	[AttributeID7] [dbo].[DBINT] NULL,
	[AttributeID8] [dbo].[DBINT] NULL,
	[AttributeID9] [dbo].[DBINT] NULL,
	[AttributeID10] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKAgent_Skill_Group_Real_Time] PRIMARY KEY CLUSTERED 
(
	[SkillTargetID] ASC,
	[SkillGroupSkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Agent_State_Trace]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Agent_State_Trace](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[EventName] [dbo].[DBINT] NOT NULL,
	[ReasonCode] [dbo].[DBINT] NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[AgentState] [dbo].[DBINT] NULL,
	[ICRCallKey] [dbo].[DBINT] NULL,
	[PeripheralCallKey] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[Direction] [dbo].[DBINT] NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NULL,
	[RouterCallKey] [dbo].[DBINT] NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAgent_State_Trace] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[TimeZone] ASC,
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_State_Trace] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Agent_Targeting_Rule]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Agent_Targeting_Rule](
	[AgentTargetingRuleID] [dbo].[DBINT] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[RuleType] [dbo].[DBSMALLINT] NOT NULL,
	[TranslationRouteID] [dbo].[DBINT] NULL,
	[Expression] [varchar](32) NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAgent_Targeting_Rule] PRIMARY KEY CLUSTERED 
(
	[AgentTargetingRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Targeting_Rule] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Agent_Team]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Agent_Team](
	[AgentTeamID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[DialedNumberID] [dbo].[DBINT] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[PriSupervisorSkillTargetID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAgent_Team] PRIMARY KEY CLUSTERED 
(
	[AgentTeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Team] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Agent_Team_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Agent_Team_Member](
	[AgentTeamID] [dbo].[DBINT] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKAgent_Team_Member] PRIMARY KEY CLUSTERED 
(
	[AgentTeamID] ASC,
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Agent_Team_Member] UNIQUE NONCLUSTERED 
(
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Agent_Team_Supervisor]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Agent_Team_Supervisor](
	[AgentTeamID] [dbo].[DBINT] NOT NULL,
	[SupervisorSkillTargetID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKAgent_Team_Supervisor] PRIMARY KEY CLUSTERED 
(
	[AgentTeamID] ASC,
	[SupervisorSkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Announcement]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Announcement](
	[NetworkTargetID] [dbo].[DBINT] NOT NULL,
	[AnnouncementType] [dbo].[DBSMALLINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAnnouncement] PRIMARY KEY CLUSTERED 
(
	[NetworkTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Announcement] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Application_Event]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Application_Event](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[CentralControllerVirtualTime] [dbo].[DBINT] NOT NULL,
	[CentralControllerFileTime] [dbo].[DBDATETIME] NOT NULL,
	[CentralControllerTimeZone] [dbo].[DBINT] NOT NULL,
	[VersionNum] [dbo].[DBSMALLINT] NOT NULL,
	[SystemType] [dbo].[DBSMALLINT] NOT NULL,
	[SystemId] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCodeType] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCode] [dbo].[DBINT] NOT NULL,
	[StatusCodeString] [dbo].[DESCRIPTION] NULL,
	[ProcName] [dbo].[VNAME32] NOT NULL,
	[SourceSystemName] [dbo].[VNAME32] NULL,
	[SourceVirtualTime] [dbo].[DBINT] NOT NULL,
	[SourceFileTime] [dbo].[DBDATETIME] NOT NULL,
	[MessageId] [dbo].[DBINT] NOT NULL,
	[Severity] [varchar](16) NULL,
	[Category] [dbo].[VNAME32] NULL,
	[MessageString] [dbo].[DESCRIPTION] NULL,
	[CustomerId] [dbo].[DBINT] NOT NULL,
	[Side] [dbo].[DBCHAR] NOT NULL,
	[Dword1] [dbo].[DBINT] NULL,
	[Dword2] [dbo].[DBINT] NULL,
	[Dword3] [dbo].[DBINT] NULL,
	[Dword4] [dbo].[DBINT] NULL,
	[Dword5] [dbo].[DBINT] NULL,
	[String1] [varchar](240) NULL,
	[String2] [varchar](240) NULL,
	[String3] [varchar](240) NULL,
	[String4] [varchar](240) NULL,
	[String5] [varchar](240) NULL,
	[BinData] [image] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKApplication_Event] PRIMARY KEY CLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Application_Gateway]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Application_Gateway](
	[ApplicationGatewayID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[ICRInstanceID] [dbo].[DBINT] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[FaultTolerance] [dbo].[DBINT] NOT NULL,
	[Encryption] [dbo].[DBINT] NOT NULL,
	[PreferredSide] [char](1) NULL,
	[ApplicationGatewayType] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKApplication_Gateway] PRIMARY KEY CLUSTERED 
(
	[ApplicationGatewayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Application_Gateway] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Application_Gateway_Connecti]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Application_Gateway_Connecti](
	[ApplicationGatewayID] [dbo].[DBINT] NOT NULL,
	[Side] [char](1) NOT NULL,
	[Address] [varchar](255) NULL,
	[Protocol] [dbo].[DBINT] NOT NULL,
	[ConnectInfo] [varchar](255) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[InService] [dbo].[DBCHAR] NOT NULL,
	[ErrorThreshold] [dbo].[DBINT] NULL,
	[RequestTimeout] [dbo].[DBINT] NULL,
	[AbandonTimeout] [dbo].[DBINT] NULL,
	[SessionRetry] [dbo].[DBINT] NULL,
	[SessionRetryLimit] [dbo].[DBINT] NULL,
	[OpenTimeout] [dbo].[DBINT] NULL,
	[HeartbeatTimeout] [dbo].[DBINT] NULL,
	[HeartbeatLimit] [dbo].[DBINT] NULL,
	[HeartbeatRetry] [dbo].[DBINT] NULL,
	[HeartbeatInterval] [dbo].[DBINT] NULL,
	[Command] [dbo].[DBINT] NULL,
	[CommandParam] [dbo].[DBINT] NULL,
	[LinkTestThreshold] [dbo].[DBINT] NULL,
	[LateTimeout] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKApplication_Gateway_Connect] PRIMARY KEY CLUSTERED 
(
	[ApplicationGatewayID] ASC,
	[Side] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Application_Gateway_Globals]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Application_Gateway_Globals](
	[ID] [dbo].[DBINT] NOT NULL,
	[ErrorThreshold] [dbo].[DBINT] NOT NULL,
	[RequestTimeout] [dbo].[DBINT] NOT NULL,
	[AbandonTimeout] [dbo].[DBINT] NOT NULL,
	[SessionRetry] [dbo].[DBINT] NOT NULL,
	[SessionRetryLimit] [dbo].[DBINT] NOT NULL,
	[OpenTimeout] [dbo].[DBINT] NOT NULL,
	[HeartbeatTimeout] [dbo].[DBINT] NOT NULL,
	[HeartbeatLimit] [dbo].[DBINT] NOT NULL,
	[HeartbeatRetry] [dbo].[DBINT] NOT NULL,
	[HeartbeatInterval] [dbo].[DBINT] NOT NULL,
	[LinkTestThreshold] [dbo].[DBINT] NOT NULL,
	[LateTimeout] [dbo].[DBINT] NOT NULL,
	[ApplicationGatewayType] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKApplication_Gateway_Globals] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Application_Gateway_Half_Hou]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Application_Gateway_Half_Hou](
	[ApplicationGatewayID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RequestsToHalf] [dbo].[DBINT] NULL,
	[RejectsToHalf] [dbo].[DBINT] NULL,
	[TimeoutsToHalf] [dbo].[DBINT] NULL,
	[MaxDelayToHalf] [dbo].[DBINT] NULL,
	[AvgDelayToHalf] [dbo].[DBINT] NULL,
	[UnavailableToHalf] [dbo].[DBINT] NULL,
	[ErrorsToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LatesToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKApplication_Gateway_Half_Ho] PRIMARY KEY CLUSTERED 
(
	[ApplicationGatewayID] ASC,
	[DateTime] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Application_Gateway_Half_H] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Application_Gateway_License]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Application_Gateway_License](
	[ApplicationGatewayID] [dbo].[DBINT] NOT NULL,
	[LicenseDefinitionID] [dbo].[DBINT] NOT NULL,
	[LicenseUnlimited] [dbo].[DBINT] NULL,
	[LicenseLimit] [dbo].[DBINT] NULL,
	[WarningLimit] [dbo].[DBINT] NULL,
	[EnforcementLimit] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKApplication_Gateway_License] PRIMARY KEY CLUSTERED 
(
	[ApplicationGatewayID] ASC,
	[LicenseDefinitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Application_Instance]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Application_Instance](
	[ApplicationInstanceID] [dbo].[DBINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[ApplicationKey] [varchar](32) NOT NULL,
	[PermissionLevel] [dbo].[DBINT] NOT NULL,
	[ApplicationType] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKApplication_Instance] PRIMARY KEY CLUSTERED 
(
	[ApplicationInstanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Application_Instance] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Application_Path]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Application_Path](
	[ApplicationPathID] [dbo].[DBINT] NOT NULL,
	[ApplicationInstanceID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[LogicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKApplication_Path] PRIMARY KEY CLUSTERED 
(
	[ApplicationPathID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Application_Path] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Application_Path_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Application_Path_Member](
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[ApplicationPathID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKApplication_Path_Member] PRIMARY KEY CLUSTERED 
(
	[PeripheralID] ASC,
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Application_Path_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Application_Path_Real_Time](
	[ApplicationPathID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[OnLineDateTime] [dbo].[DBDATETIME] NULL,
	[OnLine] [dbo].[DBCHAR] NULL,
	[Text1] [varchar](40) NULL,
	[Text2] [varchar](40) NULL,
	[Text3] [varchar](40) NULL,
	[Text4] [varchar](40) NULL,
	[Text5] [varchar](40) NULL,
	[Text6] [varchar](40) NULL,
	[Text7] [varchar](40) NULL,
	[Text8] [varchar](40) NULL,
	[Text9] [varchar](40) NULL,
	[Text10] [varchar](40) NULL,
 CONSTRAINT [XPKApplication_Path_Real_Time] PRIMARY KEY CLUSTERED 
(
	[ApplicationPathID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Attribute]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Attribute](
	[AttributeID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[AttributeDataType] [dbo].[DBINT] NOT NULL,
	[MinimumValue] [varchar](255) NULL,
	[MaximumValue] [varchar](255) NULL,
	[DefaultValue] [varchar](255) NULL,
	[AppearsOnDesktop] [dbo].[DBCHAR] NOT NULL,
	[SettableByAgent] [dbo].[DBCHAR] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAttribute] PRIMARY KEY CLUSTERED 
(
	[AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Attribute] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Attribute_Set]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Attribute_Set](
	[AttributeSetID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[AttributeSetDataType] [dbo].[DBINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKAttribute_Set] PRIMARY KEY CLUSTERED 
(
	[AttributeSetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Attribute_Set] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Attribute_Set_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Attribute_Set_Member](
	[AttributeSetID] [dbo].[DBINT] NOT NULL,
	[AttributeID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKAttribute_Set_Member] PRIMARY KEY CLUSTERED 
(
	[AttributeSetID] ASC,
	[AttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Bucket_Intervals]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Bucket_Intervals](
	[BucketIntervalID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[IntervalUpperBound1] [dbo].[DBINT] NULL,
	[IntervalUpperBound2] [dbo].[DBINT] NULL,
	[IntervalUpperBound3] [dbo].[DBINT] NULL,
	[IntervalUpperBound4] [dbo].[DBINT] NULL,
	[IntervalUpperBound5] [dbo].[DBINT] NULL,
	[IntervalUpperBound6] [dbo].[DBINT] NULL,
	[IntervalUpperBound7] [dbo].[DBINT] NULL,
	[IntervalUpperBound8] [dbo].[DBINT] NULL,
	[IntervalUpperBound9] [dbo].[DBINT] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKBucket_Intervals] PRIMARY KEY CLUSTERED 
(
	[BucketIntervalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Bucket_Intervals] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Bulk_Job]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Bulk_Job](
	[BulkJobID] [dbo].[DBINT] NOT NULL,
	[JobHostName] [varchar](64) NULL,
	[CreateDateTime] [dbo].[DBDATETIME] NULL,
	[StartDateTime] [dbo].[DBDATETIME] NULL,
	[EndDateTime] [dbo].[DBDATETIME] NULL,
	[JobState] [dbo].[DBSMALLINT] NULL,
	[JobType] [dbo].[DBSMALLINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKBulk_Job] PRIMARY KEY CLUSTERED 
(
	[BulkJobID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Business_Entity]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Business_Entity](
	[EntityID] [dbo].[DBINT] NOT NULL,
	[EntityName] [varchar](30) NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKBusiness_Entity] PRIMARY KEY CLUSTERED 
(
	[EntityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Business_Entity] UNIQUE NONCLUSTERED 
(
	[EntityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Call_Type]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Call_Type](
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[CustomerDefinitionID] [dbo].[DBINT] NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ServiceLevelThreshold] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBSMALLINT] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKCall_Type] PRIMARY KEY CLUSTERED 
(
	[CallTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Call_Type] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Call_Type_Half_Hour]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Call_Type_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[RouterQueueWaitTimeToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[AvgRouterDelayQToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallTypeLimitToHalf] [dbo].[DBINT] NULL,
	[RouterQueueGlobalLimitToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToHalf] [dbo].[DBINT] NULL,
	[ErrorCountToHalf] [dbo].[DBINT] NULL,
	[ICRDefaultRoutedToHalf] [dbo].[DBINT] NULL,
	[NetworkDefaultRoutedToHalf] [dbo].[DBINT] NULL,
	[ReturnBusyToHalf] [dbo].[DBINT] NULL,
	[ReturnRingToHalf] [dbo].[DBINT] NULL,
	[NetworkAnnouncementToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeHalf] [dbo].[DBINT] NULL,
	[CallsHandledHalf] [dbo].[DBINT] NULL,
	[CallsOfferedHalf] [dbo].[DBINT] NULL,
	[HandleTimeHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedHalf] [dbo].[DBINT] NULL,
	[ServiceLevelHalf] [dbo].[DBFLT4] NULL,
	[TalkTimeHalf] [dbo].[DBINT] NULL,
	[OverflowOutHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncompleteCallsHalf] [dbo].[DBINT] NULL,
	[ShortCallsHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgentToHalf] [dbo].[DBINT] NULL,
	[CallsRONAToHalf] [dbo].[DBINT] NULL,
	[ReturnReleaseToHalf] [dbo].[DBINT] NULL,
	[CallsQHandledToHalf] [dbo].[DBINT] NULL,
	[VruUnhandledCallsToHalf] [dbo].[DBINT] NULL,
	[VruHandledCallsToHalf] [dbo].[DBINT] NULL,
	[VruAssistedCallsToHalf] [dbo].[DBINT] NULL,
	[VruOptOutUnhandledCallsToHalf] [dbo].[DBINT] NULL,
	[VruScriptedXferredCallsToHalf] [dbo].[DBINT] NULL,
	[VruForcedXferredCallsToHalf] [dbo].[DBINT] NULL,
	[VruOtherCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[CallsRequeriedToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsAbandToAgentToHalf] [dbo].[DBINT] NULL,
	[TotalCallsAbandToHalf] [dbo].[DBINT] NULL,
	[DelayAgentAbandTimeToHalf] [dbo].[DBINT] NULL,
	[CallDelayAbandTimeToHalf] [dbo].[DBINT] NULL,
	[CTDelayAbandTimeToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelRONAToHalf] [dbo].[DBINT] NULL,
	[AgentErrorCountToHalf] [dbo].[DBINT] NULL,
	[VRUTimeToHalf] [dbo].[DBINT] NULL,
	[CTVRUTimeToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[MaxHoldTimeToHalf] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKCall_Type_Half_Hour] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[CallTypeID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Call_Type_Half_Hour] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Call_Type_Interval]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Call_Type_Interval](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[RouterQueueWaitTime] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[AvgRouterDelayQ] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterQueueCallTypeLimit] [dbo].[DBINT] NULL,
	[RouterQueueGlobalLimit] [dbo].[DBINT] NULL,
	[CallsRouted] [dbo].[DBINT] NULL,
	[ErrorCount] [dbo].[DBINT] NULL,
	[ICRDefaultRouted] [dbo].[DBINT] NULL,
	[NetworkDefaultRouted] [dbo].[DBINT] NULL,
	[ReturnBusy] [dbo].[DBINT] NULL,
	[ReturnRing] [dbo].[DBINT] NULL,
	[NetworkAnnouncement] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[HandleTime] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[OverflowOut] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[IncompleteCalls] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgent] [dbo].[DBINT] NULL,
	[CallsRONA] [dbo].[DBINT] NULL,
	[ReturnRelease] [dbo].[DBINT] NULL,
	[CallsQHandled] [dbo].[DBINT] NULL,
	[VruUnhandledCalls] [dbo].[DBINT] NULL,
	[VruHandledCalls] [dbo].[DBINT] NULL,
	[VruAssistedCalls] [dbo].[DBINT] NULL,
	[VruOptOutUnhandledCalls] [dbo].[DBINT] NULL,
	[VruScriptedXferredCalls] [dbo].[DBINT] NULL,
	[VruForcedXferredCalls] [dbo].[DBINT] NULL,
	[VruOtherCalls] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[CallsRequeried] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsAbandToAgent] [dbo].[DBINT] NULL,
	[TotalCallsAband] [dbo].[DBINT] NULL,
	[DelayAgentAbandTime] [dbo].[DBINT] NULL,
	[CallDelayAbandTime] [dbo].[DBINT] NULL,
	[CTDelayAbandTime] [dbo].[DBINT] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[AgentErrorCount] [dbo].[DBINT] NULL,
	[VRUTime] [dbo].[DBINT] NULL,
	[CTVRUTime] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CallsOnHold] [dbo].[DBINT] NULL,
	[MaxHoldTime] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[MaxCallWaitTime] [dbo].[DBINT] NULL,
	[MaxCallsQueued] [dbo].[DBINT] NULL,
	[ReservationCalls] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKCall_Type_Interval] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[CallTypeID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Call_Type_Interval] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Call_Type_Map]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Call_Type_Map](
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[Item] [dbo].[DBINT] NOT NULL,
	[MasterScriptID] [dbo].[DBINT] NOT NULL,
	[ScriptSchedule] [varchar](64) NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
 CONSTRAINT [XPK_Call_Type_Map] PRIMARY KEY CLUSTERED 
(
	[CallTypeID] ASC,
	[Item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Call_Type_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Call_Type_Real_Time](
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[AvgRouterDelayQHalf] [dbo].[DBINT] NULL,
	[AvgRouterDelayQNow] [dbo].[DBINT] NULL,
	[AvgRouterDelayQTo5] [dbo].[DBINT] NULL,
	[AvgRouterDelayQToday] [dbo].[DBINT] NULL,
	[CallsRoutedToday] [dbo].[DBINT] NULL,
	[CallsRoutedToHalf] [dbo].[DBINT] NULL,
	[ErrorCountToday] [dbo].[DBINT] NULL,
	[ErrorCountToHalf] [dbo].[DBINT] NULL,
	[ICRDefaultRoutedToday] [dbo].[DBINT] NULL,
	[ICRDefaultRoutedToHalf] [dbo].[DBINT] NULL,
	[MasterScriptID] [dbo].[DBINT] NULL,
	[NetworkDefaultRoutedToday] [dbo].[DBINT] NULL,
	[NetworkDefaultRoutedToHalf] [dbo].[DBINT] NULL,
	[ReturnBusyToday] [dbo].[DBINT] NULL,
	[ReturnBusyToHalf] [dbo].[DBINT] NULL,
	[ReturnRingToday] [dbo].[DBINT] NULL,
	[ReturnRingToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQTo5] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToday] [dbo].[DBINT] NULL,
	[RouterCallsQNow] [dbo].[DBINT] NULL,
	[RouterCallsQNowTime] [dbo].[DBINT] NULL,
	[RouterLongestCallQ] [dbo].[DBDATETIME] NULL,
	[RouterQueueCallsHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsTo5] [dbo].[DBINT] NULL,
	[RouterQueueCallsToday] [dbo].[DBINT] NULL,
	[RouterQueueWaitTimeHalf] [dbo].[DBINT] NULL,
	[RouterQueueWaitTimeTo5] [dbo].[DBINT] NULL,
	[RouterQueueWaitTimeToday] [dbo].[DBINT] NULL,
	[ScriptID] [dbo].[DBINT] NULL,
	[NetworkAnnouncementToHalf] [dbo].[DBINT] NULL,
	[NetworkAnnouncementToday] [dbo].[DBINT] NULL,
	[AnswerWaitTimeTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[CallsLeftQTo5] [dbo].[DBINT] NULL,
	[CallsOfferedTo5] [dbo].[DBINT] NULL,
	[DelayQAbandTimeTo5] [dbo].[DBINT] NULL,
	[HandleTimeTo5] [dbo].[DBINT] NULL,
	[ServiceLevelAbandTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsTo5] [dbo].[DBINT] NULL,
	[ServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[TalkTimeTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsQHeld] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToday] [dbo].[DBINT] NULL,
	[CallsHandledToday] [dbo].[DBINT] NULL,
	[CallsOfferedToday] [dbo].[DBINT] NULL,
	[HandleTimeToday] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsToday] [dbo].[DBINT] NULL,
	[ServiceLevelToday] [dbo].[DBFLT4] NULL,
	[TalkTimeToday] [dbo].[DBINT] NULL,
	[AnswerWaitTimeHalf] [dbo].[DBINT] NULL,
	[CallsHandledHalf] [dbo].[DBINT] NULL,
	[CallsOfferedHalf] [dbo].[DBINT] NULL,
	[HandleTimeHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedHalf] [dbo].[DBINT] NULL,
	[ServiceLevelHalf] [dbo].[DBFLT4] NULL,
	[TalkTimeHalf] [dbo].[DBINT] NULL,
	[HoldTimeTo5] [dbo].[DBINT] NULL,
	[HoldTimeHalf] [dbo].[DBINT] NULL,
	[HoldTimeToday] [dbo].[DBINT] NULL,
	[OverflowOutHalf] [dbo].[DBINT] NULL,
	[OverflowOutTo5] [dbo].[DBINT] NULL,
	[OverflowOutToday] [dbo].[DBINT] NULL,
	[DelayQAbandTimeToday] [dbo].[DBINT] NULL,
	[DelayQAbandTimeHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToday] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgentHalf] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgentToday] [dbo].[DBINT] NULL,
	[CallsRONATo5] [dbo].[DBINT] NULL,
	[CallsRONAHalf] [dbo].[DBINT] NULL,
	[CallsRONAToday] [dbo].[DBINT] NULL,
	[ReturnReleaseHalf] [dbo].[DBINT] NULL,
	[ReturnReleaseToday] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgentTo5] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgentTo5] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgentHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgentToday] [dbo].[DBINT] NULL,
	[TotalCallsAbandTo5] [dbo].[DBINT] NULL,
	[TotalCallsAbandToday] [dbo].[DBINT] NULL,
	[TotalCallsAbandHalf] [dbo].[DBINT] NULL,
	[DelayAgentAbandTimeToday] [dbo].[DBINT] NULL,
	[DelayAgentAbandTimeTo5] [dbo].[DBINT] NULL,
	[DelayAgentAbandTimeHalf] [dbo].[DBINT] NULL,
	[CallDelayAbandTimeToday] [dbo].[DBINT] NULL,
	[CallDelayAbandTimeTo5] [dbo].[DBINT] NULL,
	[CallDelayAbandTimeHalf] [dbo].[DBINT] NULL,
	[CTDelayAbandTimeToday] [dbo].[DBINT] NULL,
	[CTDelayAbandTimeTo5] [dbo].[DBINT] NULL,
	[CTDelayAbandTimeHalf] [dbo].[DBINT] NULL,
	[ServiceLevelErrorHalf] [dbo].[DBINT] NULL,
	[ServiceLevelErrorToday] [dbo].[DBINT] NULL,
	[ServiceLevelRONATo5] [dbo].[DBINT] NULL,
	[ServiceLevelRONAHalf] [dbo].[DBINT] NULL,
	[ServiceLevelRONAToday] [dbo].[DBINT] NULL,
	[AgentErrorCountHalf] [dbo].[DBINT] NULL,
	[AgentErrorCountToday] [dbo].[DBINT] NULL,
	[CallsAtVRUNow] [dbo].[DBINT] NULL,
	[CallsAtAgentNow] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[ShortCallToday] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKCall_Type_Real_Time] PRIMARY KEY CLUSTERED 
(
	[CallTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Call_Type_SG_Half_Hour]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Call_Type_SG_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvgRouterDelayQToHalf] [dbo].[DBINT] NULL,
	[CallDelayAbandTimeToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[CallsReportAgainstOtherToHalf] [dbo].[DBINT] NULL,
	[CallsQHandledToHalf] [dbo].[DBINT] NULL,
	[CallsRONAToHalf] [dbo].[DBINT] NULL,
	[CallsRequeriedToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgentToHalf] [dbo].[DBINT] NULL,
	[CallsHandledNotRoutedToHalf] [dbo].[DBINT] NULL,
	[DelayAgentAbandTimeToHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeToHalf] [dbo].[DBINT] NULL,
	[HandleTimeToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncompleteCallsToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedRoutedToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedNotRoutedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgentToHalf] [dbo].[DBINT] NULL,
	[RouterQueueWaitTimeToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[RouterCallsDequeuedToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[AgentErrorCountToHalf] [dbo].[DBINT] NULL,
	[ErrorCountToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelRONAToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeueToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[CallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeuedToHalf] [dbo].[DBINT] NULL,
	[MaxHoldTimeToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[OverflowOutToHalf] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKCall_Type_SG_Half_Hour] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[CallTypeID] ASC,
	[SkillGroupSkillTargetID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Call_Type_SG_Half_Hour] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Call_Type_SG_Interval]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Call_Type_SG_Interval](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AvgRouterDelayQ] [dbo].[DBINT] NULL,
	[CallDelayAbandTime] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[CallsReportAgainstOther] [dbo].[DBINT] NULL,
	[CallsQHandled] [dbo].[DBINT] NULL,
	[CallsRONA] [dbo].[DBINT] NULL,
	[CallsRequeried] [dbo].[DBINT] NULL,
	[CallsRoutedNonAgent] [dbo].[DBINT] NULL,
	[CallsHandledNotRouted] [dbo].[DBINT] NULL,
	[DelayAgentAbandTime] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[HandleTime] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[IncompleteCalls] [dbo].[DBINT] NULL,
	[CallsOfferedRouted] [dbo].[DBINT] NULL,
	[CallsOfferedNotRouted] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgent] [dbo].[DBINT] NULL,
	[RouterQueueWaitTime] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[RouterCallsDequeued] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[AgentErrorCount] [dbo].[DBINT] NULL,
	[ErrorCount] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeue] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[CallsOnHold] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeued] [dbo].[DBINT] NULL,
	[MaxHoldTime] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[OverflowOut] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[MaxCallWaitTime] [dbo].[DBINT] NULL,
	[MaxCallsQueued] [dbo].[DBINT] NULL,
	[ReservationCalls] [dbo].[DBINT] NULL,
	[AttributeID1] [dbo].[DBINT] NULL,
	[AttributeID2] [dbo].[DBINT] NULL,
	[AttributeID3] [dbo].[DBINT] NULL,
	[AttributeID4] [dbo].[DBINT] NULL,
	[AttributeID5] [dbo].[DBINT] NULL,
	[AttributeID6] [dbo].[DBINT] NULL,
	[AttributeID7] [dbo].[DBINT] NULL,
	[AttributeID8] [dbo].[DBINT] NULL,
	[AttributeID9] [dbo].[DBINT] NULL,
	[AttributeID10] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKCall_Type_SG_Interval] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[CallTypeID] ASC,
	[SkillGroupSkillTargetID] ASC,
	[PrecisionQueueID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Call_Type_SG_Interval] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Campaign]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Campaign](
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[CampaignName] [dbo].[VNAME32] NOT NULL,
	[Enabled] [dbo].[DBCHAR] NOT NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[AbandonEnabled] [dbo].[DBCHAR] NOT NULL,
	[AbandonPercent] [dbo].[DBFLT8] NOT NULL,
	[NoAnswerCallback] [dbo].[DBINT] NOT NULL,
	[BusyCallback] [dbo].[DBINT] NOT NULL,
	[NoAnswerRingLimit] [dbo].[DBINT] NOT NULL,
	[MaximumLineAgent] [dbo].[DBFLT8] NOT NULL,
	[LinesPerAgent] [dbo].[DBFLT8] NOT NULL,
	[LeaveMessageEnabled] [dbo].[DBCHAR] NOT NULL,
	[MaxAttempts] [dbo].[DBINT] NOT NULL,
	[WorkStartHours] [dbo].[DBINT] NOT NULL,
	[WorkStartMinutes] [dbo].[DBINT] NOT NULL,
	[WorkEndHours] [dbo].[DBINT] NOT NULL,
	[WorkEndMinutes] [dbo].[DBINT] NOT NULL,
	[HomeStartHours] [dbo].[DBINT] NOT NULL,
	[HomeStartMinutes] [dbo].[DBINT] NOT NULL,
	[HomeEndHours] [dbo].[DBINT] NOT NULL,
	[HomeEndMinutes] [dbo].[DBINT] NOT NULL,
	[HomeEnabled] [dbo].[DBCHAR] NOT NULL,
	[WorkEnabled] [dbo].[DBCHAR] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[BusyRetryEnabled] [dbo].[DBCHAR] NOT NULL,
	[MaxBusyAttempts] [dbo].[DBSMALLINT] NOT NULL,
	[AnswerDetectEnabled] [dbo].[DBCHAR] NOT NULL,
	[CallbackTimeLimit] [dbo].[DBSMALLINT] NOT NULL,
	[MinimumCallDuration] [dbo].[DBSMALLINT] NOT NULL,
	[ExhaustedCallsEnabled] [dbo].[DBCHAR] NOT NULL,
	[EdgeDetectEnabled] [dbo].[DBCHAR] NOT NULL,
	[QuickDetectEnabled] [dbo].[DBCHAR] NOT NULL,
	[SPClosedRecordEnabled] [dbo].[DBCHAR] NOT NULL,
	[SPClosedRecordCount] [dbo].[DBSMALLINT] NOT NULL,
	[PersonalizedCallbackEnabled] [dbo].[DBCHAR] NOT NULL,
	[ReleaseCallbackEnabled] [dbo].[DBCHAR] NOT NULL,
	[RescheduleCallbackMode] [dbo].[DBSMALLINT] NOT NULL,
	[IPTerminatingBeepDetect] [dbo].[DBCHAR] NOT NULL,
	[CampaignPurposeType] [dbo].[DBINT] NOT NULL,
	[IPAMDEnabled] [dbo].[DBCHAR] NOT NULL,
	[AMDTreatmentMode] [dbo].[DBINT] NOT NULL,
	[UseGMTFromRegionPrefix] [dbo].[DBCHAR] NOT NULL,
	[ConfigParam] [varchar](255) NULL,
	[AbandonCustomerCallback] [dbo].[DBINT] NULL,
	[AbandonedDialerCallback] [dbo].[DBINT] NULL,
	[AnsweringMachineCallback] [dbo].[DBINT] NULL,
	[PrefixDigits] [varchar](15) NULL,
	[WaitForBusyRetry] [dbo].[DBCHAR] NOT NULL,
	[DisableCPA] [dbo].[DBCHAR] NOT NULL,
	[CustomerNotHomeCallback] [dbo].[DBINT] NULL,
	[DSTLocation] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
	[FutureUseFloat1] [dbo].[DBFLT8] NULL,
	[FutureUseFloat2] [dbo].[DBFLT8] NULL,
	[FutureUseFloat3] [dbo].[DBFLT8] NULL,
	[CloseAbandonedToIVR] [dbo].[DBCHAR] NOT NULL,
	[CancelledCallRetryTime] [dbo].[DBINT] NULL,
	[CPAAnalysisPeriod] [dbo].[DBINT] NULL,
	[CPAMaxTermToneAnalysis] [dbo].[DBINT] NULL,
	[PredictiveCorrectionPace] [dbo].[DBINT] NULL,
	[PredictiveGain] [dbo].[DBFLT8] NULL,
	[PredictiveHistoricGain] [dbo].[DBFLT8] NULL,
	[PredictiveLowAbandonGain] [dbo].[DBFLT8] NULL,
	[CancelRinging] [dbo].[DBINT] NOT NULL,
	[EnableRecordWaveFile] [dbo].[DBCHAR] NOT NULL,
	[EnableMediaTermination] [dbo].[DBCHAR] NOT NULL,
	[CPAMinSilencePeriod] [dbo].[DBINT] NOT NULL,
	[CPAMinimumValidSpeech] [dbo].[DBINT] NOT NULL,
	[CPAMaxTimeAnalysis] [dbo].[DBINT] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
	[DSTLocationName] [varchar](32) NOT NULL,
	[APIGenerated] [dbo].[DBCHAR] NOT NULL,
	[StartDate] [dbo].[DBDATETIME] NULL,
	[EndDate] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKCampaign] PRIMARY KEY CLUSTERED 
(
	[CampaignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Campaign] UNIQUE NONCLUSTERED 
(
	[CampaignName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Campaign_Half_Hour]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Campaign_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActiveTimeToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKCampaign_Half_Hour] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[CampaignID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Campaign_Half_Hour] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Campaign_Query_Rule]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Campaign_Query_Rule](
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[QueryRuleID] [dbo].[DBINT] NOT NULL,
	[ListOrder] [dbo].[DBINT] NOT NULL,
	[StartHours] [dbo].[DBINT] NOT NULL,
	[StartMinutes] [dbo].[DBINT] NOT NULL,
	[EndHours] [dbo].[DBINT] NOT NULL,
	[EndMinutes] [dbo].[DBINT] NOT NULL,
	[Penetration] [dbo].[DBINT] NOT NULL,
	[Duration] [dbo].[DBINT] NOT NULL,
	[HitRate] [dbo].[DBINT] NOT NULL,
	[PenetrationEnabled] [dbo].[DBCHAR] NOT NULL,
	[DurationEnabled] [dbo].[DBCHAR] NOT NULL,
	[HitRateEnabled] [dbo].[DBCHAR] NOT NULL,
	[QueryRuleEnabled] [dbo].[DBCHAR] NOT NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
 CONSTRAINT [XPKCampaign_Query_Rule] PRIMARY KEY CLUSTERED 
(
	[CampaignID] ASC,
	[QueryRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Campaign_Query_Rule_Half_Hou]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Campaign_Query_Rule_Half_Hou](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[QueryRuleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsAttemptedToHalf] [dbo].[DBINT] NULL,
	[VoiceDetectToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[WrapupTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[BusyDetectToHalf] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectToHalf] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectToHalf] [dbo].[DBINT] NULL,
	[SITToneDetectToHalf] [dbo].[DBINT] NULL,
	[NoAnswerDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonDetectToHalf] [dbo].[DBINT] NULL,
	[CancelledDetectToHalf] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonToIVRToHalf] [dbo].[DBINT] NULL,
	[NoRingBackDetectToHalf] [dbo].[DBINT] NULL,
	[NoDialToneDetectToHalf] [dbo].[DBINT] NULL,
	[FaxDetectToHalf] [dbo].[DBINT] NULL,
	[AgentRejectedDetectToHalf] [dbo].[DBINT] NULL,
	[AgentClosedDetectToHalf] [dbo].[DBINT] NULL,
	[WrongNumberCountToHalf] [dbo].[DBINT] NULL,
	[CustomerNotHomeCountToHalf] [dbo].[DBINT] NULL,
	[PersonalCallbackCountToHalf] [dbo].[DBINT] NULL,
	[CallbackCountToHalf] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[QueryRuleActiveTimeToHalf] [dbo].[DBINT] NULL,
	[CampaignOutOfNumbersToHalf] [dbo].[DBINT] NULL,
	[LowNoiseVolumeToHalf] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKCampaign_Query_Rule_Half_Ho] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[CampaignID] ASC,
	[QueryRuleID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Campaign_Query_Rule_Half_H] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Campaign_Query_Rule_Interval]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Campaign_Query_Rule_Interval](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[QueryRuleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsAttempted] [dbo].[DBINT] NULL,
	[VoiceDetect] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[WrapupTime] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[BusyDetect] [dbo].[DBINT] NULL,
	[AnsweringMachineDetect] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetect] [dbo].[DBINT] NULL,
	[SITToneDetect] [dbo].[DBINT] NULL,
	[NoAnswerDetect] [dbo].[DBINT] NULL,
	[AbandonDetect] [dbo].[DBINT] NULL,
	[CancelledDetect] [dbo].[DBINT] NULL,
	[CustomerAbandonDetect] [dbo].[DBINT] NULL,
	[AbandonToIVR] [dbo].[DBINT] NULL,
	[NoRingBackDetect] [dbo].[DBINT] NULL,
	[NoDialToneDetect] [dbo].[DBINT] NULL,
	[FaxDetect] [dbo].[DBINT] NULL,
	[AgentRejectedDetect] [dbo].[DBINT] NULL,
	[AgentClosedDetect] [dbo].[DBINT] NULL,
	[WrongNumberCount] [dbo].[DBINT] NULL,
	[CustomerNotHomeCount] [dbo].[DBINT] NULL,
	[PersonalCallbackCount] [dbo].[DBINT] NULL,
	[CallbackCount] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[QueryRuleActiveTime] [dbo].[DBINT] NULL,
	[CampaignOutOfNumbers] [dbo].[DBINT] NULL,
	[LowNoiseVolume] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKCampaign_Query_Rule_Interva] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[CampaignID] ASC,
	[QueryRuleID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Campaign_Query_Rule_Interv] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Campaign_Query_Rule_Real_Tim]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Campaign_Query_Rule_Real_Tim](
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[QueryRuleID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[AttemptedCount] [dbo].[DBINT] NULL,
	[VoiceCount] [dbo].[DBINT] NULL,
	[TalkTimeCount] [dbo].[DBINT] NULL,
	[WrapupTimeCount] [dbo].[DBINT] NULL,
	[CallBackCount] [dbo].[DBINT] NULL,
	[TotalCount] [dbo].[DBINT] NULL,
	[ClosedCount] [dbo].[DBINT] NULL,
	[BusyCount] [dbo].[DBINT] NULL,
	[AnsweringMachineCount] [dbo].[DBINT] NULL,
	[NetworkAnsMachineCount] [dbo].[DBINT] NULL,
	[SITToneDetectCount] [dbo].[DBINT] NULL,
	[NoAnswerDetectCount] [dbo].[DBINT] NULL,
	[AbandonDetectCount] [dbo].[DBINT] NULL,
	[CancelledDetectCount] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectCount] [dbo].[DBINT] NULL,
	[AbandonToIVRCount] [dbo].[DBINT] NULL,
	[NoRingBackDetectCount] [dbo].[DBINT] NULL,
	[NoDialToneDetectCount] [dbo].[DBINT] NULL,
	[FaxDetectCount] [dbo].[DBINT] NULL,
	[AgentRejectedCount] [dbo].[DBINT] NULL,
	[AgentClosedCount] [dbo].[DBINT] NULL,
	[WrongNumberCount] [dbo].[DBINT] NULL,
	[CustomerNotHomeCount] [dbo].[DBINT] NULL,
	[PersonalCallbackCount] [dbo].[DBINT] NULL,
	[TotalVoiceCount] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[QueryRuleActive] [dbo].[DBINT] NULL,
	[PendingRecordsZone1] [dbo].[DBINT] NULL,
	[PendingRecordsZone2] [dbo].[DBINT] NULL,
	[AbandonDetectTo5] [dbo].[DBINT] NULL,
	[AbandonDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonToIVRTo5] [dbo].[DBINT] NULL,
	[AbandonToIVRToHalf] [dbo].[DBINT] NULL,
	[AgentClosedDetectTo5] [dbo].[DBINT] NULL,
	[AgentClosedDetectToHalf] [dbo].[DBINT] NULL,
	[AgentRejectedDetectTo5] [dbo].[DBINT] NULL,
	[AgentRejectedDetectToHalf] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectTo5] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectToHalf] [dbo].[DBINT] NULL,
	[BusyDetectTo5] [dbo].[DBINT] NULL,
	[BusyDetectToHalf] [dbo].[DBINT] NULL,
	[CallbackCountTo5] [dbo].[DBINT] NULL,
	[CallbackCountToHalf] [dbo].[DBINT] NULL,
	[CancelledDetectTo5] [dbo].[DBINT] NULL,
	[CancelledDetectToHalf] [dbo].[DBINT] NULL,
	[ContactsAttemptedTo5] [dbo].[DBINT] NULL,
	[ContactsAttemptedToHalf] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectTo5] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectToHalf] [dbo].[DBINT] NULL,
	[CustomerNotHomeCountTo5] [dbo].[DBINT] NULL,
	[CustomerNotHomeCountToHalf] [dbo].[DBINT] NULL,
	[FaxDetectTo5] [dbo].[DBINT] NULL,
	[FaxDetectToHalf] [dbo].[DBINT] NULL,
	[LowNoiseVolumeToday] [dbo].[DBINT] NULL,
	[LowNoiseVolumeTo5] [dbo].[DBINT] NULL,
	[LowNoiseVolumeToHalf] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectTo5] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectToHalf] [dbo].[DBINT] NULL,
	[NoAnswerDetectTo5] [dbo].[DBINT] NULL,
	[NoAnswerDetectToHalf] [dbo].[DBINT] NULL,
	[NoDialToneDetectTo5] [dbo].[DBINT] NULL,
	[NoDialToneDetectToHalf] [dbo].[DBINT] NULL,
	[NoRingBackDetectTo5] [dbo].[DBINT] NULL,
	[NoRingBackDetectToHalf] [dbo].[DBINT] NULL,
	[PersonalCallbackCountTo5] [dbo].[DBINT] NULL,
	[PersonalCallbackCountToHalf] [dbo].[DBINT] NULL,
	[SITToneDetectTo5] [dbo].[DBINT] NULL,
	[SITToneDetectToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[VoiceDetectTo5] [dbo].[DBINT] NULL,
	[VoiceDetectToHalf] [dbo].[DBINT] NULL,
	[WrapupTimeToHalf] [dbo].[DBINT] NULL,
	[WrongNumberCountTo5] [dbo].[DBINT] NULL,
	[WrongNumberCountToHalf] [dbo].[DBINT] NULL,
	[PendingRetryRecordsZone1] [dbo].[DBINT] NULL,
	[PendingRetryRecordsZone2] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKCampaign_Query_Rule_Real_Ti] PRIMARY KEY CLUSTERED 
(
	[CampaignID] ASC,
	[QueryRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Campaign_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Campaign_Real_Time](
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[Status] [char](1) NULL,
	[Mode] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKCampaign_Real_Time] PRIMARY KEY CLUSTERED 
(
	[CampaignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Campaign_Skill_Group]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Campaign_Skill_Group](
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[OverflowAgents] [dbo].[DBINT] NOT NULL,
	[ReservationPercentage] [dbo].[DBINT] NULL,
	[AutoAnswerReservationCall] [dbo].[DBINT] NULL,
	[RecordsToCache] [dbo].[DBINT] NOT NULL,
	[IVRPorts] [dbo].[DBINT] NOT NULL,
	[AbandonedRoutePoint] [varchar](50) NULL,
	[IVRRoutePoint] [varchar](50) NULL,
	[ConfigParam] [varchar](255) NULL,
	[DialedNumber] [dbo].[VNAME32] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
	[DialingMode] [dbo].[DBSMALLINT] NULL,
 CONSTRAINT [XPKTarget_Group] PRIMARY KEY CLUSTERED 
(
	[CampaignID] ASC,
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Campaign_Target_Sequence]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Campaign_Target_Sequence](
	[CampaignID] [dbo].[DBINT] NOT NULL,
	[SequenceNumber] [dbo].[DBINT] NOT NULL,
	[ConfigParam] [varchar](255) NULL,
	[ZoneIndex] [dbo].[DBINT] NOT NULL,
	[PhoneIndex] [dbo].[DBINT] NOT NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
 CONSTRAINT [XPKCampaign_Target_Sequence] PRIMARY KEY CLUSTERED 
(
	[CampaignID] ASC,
	[SequenceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_ClassID_To_ObjectType]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ClassID_To_ObjectType](
	[ClassID] [dbo].[DBINT] NOT NULL,
	[ObjectType] [dbo].[DBINT] NOT NULL,
	[ObjectID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKClassID_To_ObjectType] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC,
	[ObjectType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Class_Access_Xref]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Class_Access_Xref](
	[ClassAccessXrefID] [dbo].[DBINT] NOT NULL,
	[ClassID] [dbo].[DBINT] NOT NULL,
	[AccessLevel] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKClass_Access_Xref] PRIMARY KEY NONCLUSTERED 
(
	[ClassAccessXrefID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Class_Access_Xref] UNIQUE CLUSTERED 
(
	[AccessLevel] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Class_List]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Class_List](
	[ClassID] [dbo].[DBINT] NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
 CONSTRAINT [XPKSecurity_Class] PRIMARY KEY NONCLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Class_List] UNIQUE CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Class_Security]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Class_Security](
	[ClassSecurityID] [dbo].[DBINT] NOT NULL,
	[ClassID] [dbo].[DBINT] NOT NULL,
	[UserGroupName] [varchar](64) NOT NULL,
	[AccessLevel] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKClass_Security] PRIMARY KEY CLUSTERED 
(
	[ClassSecurityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Configuration_Limit]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Configuration_Limit](
	[ConfigLimitID] [dbo].[DBINT] NOT NULL,
	[ConfigLimitName] [dbo].[VNAME32] NOT NULL,
	[ConfigLimitDefaultValue] [dbo].[DBINT] NOT NULL,
	[ConfigLimitCurrentValue] [dbo].[DBINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKConfiguration_Limit] PRIMARY KEY CLUSTERED 
(
	[ConfigLimitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Congestion_Control]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Congestion_Control](
	[DeploymentID] [dbo].[DBINT] NOT NULL,
	[DeploymentType] [dbo].[DBINT] NOT NULL,
	[CongestionEnabled] [dbo].[DBCHAR] NOT NULL,
	[Level1Onset] [dbo].[DBINT] NOT NULL,
	[Level1Abate] [dbo].[DBINT] NOT NULL,
	[Level1Reduction] [dbo].[DBINT] NOT NULL,
	[Level2Onset] [dbo].[DBINT] NOT NULL,
	[Level2Abate] [dbo].[DBINT] NOT NULL,
	[Level2Reduction] [dbo].[DBINT] NOT NULL,
	[Level3Onset] [dbo].[DBINT] NOT NULL,
	[Level3Abate] [dbo].[DBINT] NOT NULL,
	[Level3Reduction] [dbo].[DBINT] NOT NULL,
	[CongestionTreatmentMode] [dbo].[DBINT] NOT NULL,
	[LabelString] [dbo].[VNAME32] NULL,
	[UserOverride] [dbo].[DBSMALLINT] NOT NULL,
	[CongestionCheckInterval] [dbo].[DBINT] NOT NULL,
	[WMAWeight] [dbo].[DBSMALLINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKCongestion_Control] PRIMARY KEY CLUSTERED 
(
	[DeploymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Contact_Share_Group]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Contact_Share_Group](
	[GroupID] [dbo].[DBINT] NOT NULL,
	[RuleID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[AcceptQueueIf] [varchar](512) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
 CONSTRAINT [XPKContact_Share_Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Contact_Share_Group] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Contact_Share_Group_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Contact_Share_Group_Member](
	[GroupID] [dbo].[DBINT] NOT NULL,
	[QueueID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKContact_Share_Group_Member] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC,
	[QueueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Contact_Share_Queue]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Contact_Share_Queue](
	[QueueID] [dbo].[DBINT] NOT NULL,
	[QueueName] [dbo].[VNAME32] NOT NULL,
	[TargetQueueID] [dbo].[DBINT] NOT NULL,
	[QueueType] [char](1) NOT NULL,
	[TargetInstanceID] [dbo].[DBINT] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
 CONSTRAINT [XPKContact_Share_Queue] PRIMARY KEY CLUSTERED 
(
	[QueueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Contact_Share_Rule]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Contact_Share_Rule](
	[RuleID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[RuleExpression] [varchar](512) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
 CONSTRAINT [XPKContact_Share_Rule] PRIMARY KEY CLUSTERED 
(
	[RuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Contact_Share_Rule] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Customer_Definition]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Customer_Definition](
	[CustomerDefinitionID] [dbo].[DBINT] NOT NULL,
	[ICRInstanceID] [dbo].[DBINT] NOT NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[FeatureSetID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKCustomer_Definition] PRIMARY KEY CLUSTERED 
(
	[CustomerDefinitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Customer_Definition] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Customer_Options]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Customer_Options](
	[CustomerDefinitionID] [dbo].[DBINT] NOT NULL,
	[Type] [dbo].[DBINT] NOT NULL,
	[OptionValue] [varchar](255) NULL,
 CONSTRAINT [XPKCustomer_Options] PRIMARY KEY CLUSTERED 
(
	[CustomerDefinitionID] ASC,
	[Type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Default_Call_Type]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Default_Call_Type](
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKDefault_Call_Type] PRIMARY KEY CLUSTERED 
(
	[RoutingClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Department]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Department](
	[DepartmentID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[CustomerDefinitionID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKDepartment] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Department] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Department_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Department_Member](
	[UserGroupID] [dbo].[DBINT] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKUser_Group_Department] PRIMARY KEY CLUSTERED 
(
	[UserGroupID] ASC,
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Device_Target]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Device_Target](
	[NetworkTargetID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[DeviceTargetType] [dbo].[DBINT] NOT NULL,
	[DeviceAddressType] [dbo].[DBINT] NOT NULL,
	[GlobalAddress] [varchar](64) NOT NULL,
	[ConfigParam] [varchar](255) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKDevice_Target] PRIMARY KEY CLUSTERED 
(
	[NetworkTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Device_Target] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK2Device_Target] UNIQUE NONCLUSTERED 
(
	[DeviceAddressType] ASC,
	[GlobalAddress] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Dial_Number_Plan]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Dial_Number_Plan](
	[DialNumberPlanID] [dbo].[DBINT] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[WildcardPattern] [dbo].[VNAME32] NOT NULL,
	[PostRoute] [dbo].[DBCHAR] NOT NULL,
	[DialNumberPlanType] [dbo].[DBINT] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[DialedNumberID] [dbo].[DBINT] NULL,
	[DialString] [dbo].[VNAME32] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKDial_Number_Plan] PRIMARY KEY CLUSTERED 
(
	[DialNumberPlanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Dial_Number_Plan] UNIQUE NONCLUSTERED 
(
	[RoutingClientID] ASC,
	[WildcardPattern] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Dialed_Number]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Dialed_Number](
	[DialedNumberID] [dbo].[DBINT] NOT NULL,
	[CustomerDefinitionID] [dbo].[DBINT] NULL,
	[LabelID] [dbo].[DBINT] NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[DialedNumberString] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[PermitApplicationRouting] [dbo].[DBCHAR] NOT NULL,
	[ReservedByIVR] [dbo].[DBCHAR] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKDialed_Number] PRIMARY KEY CLUSTERED 
(
	[DialedNumberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Dialed_Number] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK2Dialed_Number] UNIQUE NONCLUSTERED 
(
	[RoutingClientID] ASC,
	[DialedNumberString] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Dialed_Number_Label]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Dialed_Number_Label](
	[DialedNumberID] [dbo].[DBINT] NOT NULL,
	[LabelID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKDialed_Number_Label] PRIMARY KEY CLUSTERED 
(
	[DialedNumberID] ASC,
	[LabelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Dialed_Number_Map]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Dialed_Number_Map](
	[DialedNumberID] [dbo].[DBINT] NOT NULL,
	[Item] [dbo].[DBINT] NOT NULL,
	[CallTypeID] [dbo].[DBINT] NOT NULL,
	[RegionID] [dbo].[DBINT] NULL,
	[CEDWildCard] [varchar](30) NULL,
	[ANIWildCard] [varchar](30) NULL,
	[ANIWildCardType] [dbo].[DBSMALLINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
 CONSTRAINT [XPKDialed_Number_Map] PRIMARY KEY CLUSTERED 
(
	[DialedNumberID] ASC,
	[Item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Dialer]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Dialer](
	[DialerID] [dbo].[DBINT] NOT NULL,
	[DialerName] [dbo].[VNAME32] NOT NULL,
	[ComputerName] [varchar](64) NOT NULL,
	[Enabled] [dbo].[DBCHAR] NOT NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[DialToneDetectEnabled] [dbo].[DBCHAR] NOT NULL,
	[HangupTime] [dbo].[DBINT] NOT NULL,
	[PrefixDigits] [varchar](32) NULL,
	[LocalAreaCode] [varchar](100) NULL,
	[TenDigitDialEnabled] [dbo].[DBCHAR] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[LongDistancePrefix] [varchar](32) NULL,
	[ConfigParam] [varchar](255) NULL,
	[IPBridgingEnabled] [dbo].[DBCHAR] NOT NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
	[CPARecordWaveFile] [dbo].[DBINT] NULL,
	[CPAAnalysisPeriod] [dbo].[DBINT] NULL,
	[CPAMinSilencePeriod] [dbo].[DBINT] NULL,
	[CPAMaxTimeAnalysis] [dbo].[DBINT] NULL,
	[CPAMinimumValidSpeechTime] [dbo].[DBINT] NULL,
	[CPAMaxTermToneAnalysis] [dbo].[DBINT] NULL,
	[CPAJitterBufferDelay] [dbo].[DBINT] NULL,
	[PortThrottle] [dbo].[DBFLT8] NULL,
	[PredictiveCorrectionPace] [dbo].[DBINT] NOT NULL,
	[PredictiveGain] [dbo].[DBFLT8] NOT NULL,
	[PredictiveHistoricGain] [dbo].[DBFLT8] NOT NULL,
	[PredictiveLowAbandonGain] [dbo].[DBFLT8] NOT NULL,
	[DialerType] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKDialer] PRIMARY KEY CLUSTERED 
(
	[DialerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Dialer] UNIQUE NONCLUSTERED 
(
	[DialerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK2Dialer] UNIQUE NONCLUSTERED 
(
	[ComputerName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Dialer_Detail]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Dialer_Detail](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[CustomerTimeZone] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[CallResult] [dbo].[DBINT] NULL,
	[CallResultDetail] [dbo].[DBINT] NULL,
	[CallStatusZone1] [char](1) NULL,
	[CallStatusZone2] [char](1) NULL,
	[QueryRuleID] [dbo].[DBINT] NULL,
	[DialingListID] [dbo].[DBINT] NULL,
	[Phone] [varchar](20) NULL,
	[PhoneExt] [varchar](8) NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[PhoneIndex] [dbo].[DBINT] NULL,
	[PhoneID] [dbo].[DBINT] NULL,
	[ZoneIndex] [dbo].[DBSMALLINT] NULL,
	[AgentPeripheralNumber] [varchar](32) NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NULL,
	[PeripheralCallKey] [dbo].[DBINT] NULL,
	[CallDuration] [dbo].[DBINT] NULL,
	[AccountNumber] [varchar](128) NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[CallbackPhone] [varchar](20) NULL,
	[CallbackDateTime] [dbo].[DBSMALLDATE] NULL,
	[DialingMode] [dbo].[DBINT] NULL,
	[DialerID] [dbo].[DBINT] NULL,
	[PortNumber] [dbo].[DBINT] NULL,
	[ImportRuleDateTime] [dbo].[DBDATETIME] NULL,
	[InternalUse1] [dbo].[DBINT] NULL,
	[InternalUse2] [dbo].[DBINT] NULL,
	[InternalUse3] [dbo].[DBINT] NULL,
	[InternalUse4] [dbo].[DBINT] NULL,
	[InternalUse5] [dbo].[DBINT] NULL,
	[InternalUse6] [dbo].[DBINT] NULL,
	[InternalUse7] [dbo].[DBINT] NULL,
	[InternalUse8] [dbo].[DBINT] NULL,
	[InternalUse9] [dbo].[DBINT] NULL,
	[InternalUse10] [dbo].[DBINT] NULL,
	[InternalUse11] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseInt6] [dbo].[DBINT] NULL,
	[FutureUseInt7] [dbo].[DBINT] NULL,
	[FutureUseInt8] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
	[FutureUseVarchar4] [varchar](64) NULL,
	[RouterCallKey] [dbo].[DBINT] NULL,
	[CallGUID] [varchar](32) NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NULL,
	[WrapupData] [varchar](40) NULL,
	[PickupTime] [dbo].[DBINT] NULL,
	[MaxActiveGlitchTime] [dbo].[DBINT] NULL,
	[NumOfActiveGlitches] [dbo].[DBINT] NULL,
	[ValidSpeechTime] [dbo].[DBINT] NULL,
	[MaxPostSpeechSilenceGlitchTime] [dbo].[DBINT] NULL,
	[NumOfPostSpeechSilenceGlitches] [dbo].[DBINT] NULL,
	[SilencePeriod] [dbo].[DBINT] NULL,
	[TermToneDetectionTime] [dbo].[DBINT] NULL,
	[MaxZCRstdev] [dbo].[DBINT] NULL,
	[NoiseThreshold] [dbo].[DBINT] NULL,
	[ActiveThreshold] [dbo].[DBINT] NULL,
	[ReservationCallDuration] [dbo].[DBINT] NULL,
	[PreviewTime] [dbo].[DBINT] NULL,
	[CampaignReportingDateTime] [dbo].[DBDATETIME] NULL,
	[ProtocolID] [dbo].[DBINT] NULL,
	[IdleTime] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKDialer_Detail] PRIMARY KEY CLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Dialer_Half_Hour]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Dialer_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[DialerID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsDialedToHalf] [dbo].[DBINT] NULL,
	[BusyDetectToHalf] [dbo].[DBINT] NULL,
	[VoiceDetectToHalf] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectToHalf] [dbo].[DBINT] NULL,
	[SITToneDetectToHalf] [dbo].[DBINT] NULL,
	[NoAnswerDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonDetectToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[NoRingBackDetectToHalf] [dbo].[DBINT] NULL,
	[NoDialToneDetectToHalf] [dbo].[DBINT] NULL,
	[FaxDetectToHalf] [dbo].[DBINT] NULL,
	[CancelledDetectToHalf] [dbo].[DBINT] NULL,
	[AgentRejectedDetectToHalf] [dbo].[DBINT] NULL,
	[AgentClosedDetectToHalf] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonToIVRToHalf] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectToHalf] [dbo].[DBINT] NULL,
	[WrongNumberCountToHalf] [dbo].[DBINT] NULL,
	[CustomerNotHomeCountToHalf] [dbo].[DBINT] NULL,
	[PersonalCallbackCountToHalf] [dbo].[DBINT] NULL,
	[CallbackCountToHalf] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[IdlePortTimeToHalf] [dbo].[DBINT] NULL,
	[ReservePortTimeToHalf] [dbo].[DBINT] NULL,
	[DialingTimeToHalf] [dbo].[DBINT] NULL,
	[AllPortsBusyCountToHalf] [dbo].[DBINT] NULL,
	[LowNoiseVolumeToHalf] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKDialer_Half_Hour] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[DialerID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Dialer_Half_Hour] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Dialer_Interval]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Dialer_Interval](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[DialerID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ContactsDialed] [dbo].[DBINT] NULL,
	[BusyDetect] [dbo].[DBINT] NULL,
	[VoiceDetect] [dbo].[DBINT] NULL,
	[AnsweringMachineDetect] [dbo].[DBINT] NULL,
	[SITToneDetect] [dbo].[DBINT] NULL,
	[NoAnswerDetect] [dbo].[DBINT] NULL,
	[AbandonDetect] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[NoRingBackDetect] [dbo].[DBINT] NULL,
	[NoDialToneDetect] [dbo].[DBINT] NULL,
	[FaxDetect] [dbo].[DBINT] NULL,
	[CancelledDetect] [dbo].[DBINT] NULL,
	[AgentRejectedDetect] [dbo].[DBINT] NULL,
	[AgentClosedDetect] [dbo].[DBINT] NULL,
	[CustomerAbandonDetect] [dbo].[DBINT] NULL,
	[AbandonToIVR] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetect] [dbo].[DBINT] NULL,
	[WrongNumberCount] [dbo].[DBINT] NULL,
	[CustomerNotHomeCount] [dbo].[DBINT] NULL,
	[PersonalCallbackCount] [dbo].[DBINT] NULL,
	[CallbackCount] [dbo].[DBINT] NULL,
	[ReservationCallAttempts] [dbo].[DBINT] NULL,
	[AllPortsBusyTime] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[IdlePortTime] [dbo].[DBINT] NULL,
	[ReservePortTime] [dbo].[DBINT] NULL,
	[DialingTime] [dbo].[DBINT] NULL,
	[AllPortsBusyCount] [dbo].[DBINT] NULL,
	[LowNoiseVolume] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKDialer_Interval] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[DialerID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Dialer_Interval] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Dialer_Port_Map]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Dialer_Port_Map](
	[DialerID] [dbo].[DBINT] NOT NULL,
	[PortNumber] [dbo].[DBINT] NOT NULL,
	[Station] [varchar](32) NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
 CONSTRAINT [XPKPort_Map] PRIMARY KEY CLUSTERED 
(
	[DialerID] ASC,
	[PortNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Dialer_Port_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Dialer_Port_Real_Time](
	[DialerID] [dbo].[DBINT] NOT NULL,
	[PortNumber] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[PortStatus] [dbo].[DBINT] NOT NULL,
	[PhoneNumber] [varchar](32) NULL,
	[AccountNumber] [dbo].[VNAME32] NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[QueryRuleID] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKDialer_Port_Real_Time] PRIMARY KEY CLUSTERED 
(
	[DialerID] ASC,
	[PortNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Dialer_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Dialer_Real_Time](
	[DialerID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[ContactsDialedToday] [dbo].[DBINT] NULL,
	[BusyDetectToday] [dbo].[DBINT] NULL,
	[VoiceDetectToday] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectToday] [dbo].[DBINT] NULL,
	[SITToneDetectToday] [dbo].[DBINT] NULL,
	[NoAnswerDetectToday] [dbo].[DBINT] NULL,
	[AbandonDetectToday] [dbo].[DBINT] NULL,
	[NoRingBackDetectHalf] [dbo].[DBINT] NULL,
	[NoDialToneDetectHalf] [dbo].[DBINT] NULL,
	[FaxDetectHalf] [dbo].[DBINT] NULL,
	[CancelledDetectHalf] [dbo].[DBINT] NULL,
	[AgentRejectedDetectHalf] [dbo].[DBINT] NULL,
	[AgentClosedDetectHalf] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectHalf] [dbo].[DBINT] NULL,
	[AbandonToIVRHalf] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectHalf] [dbo].[DBINT] NULL,
	[WrongNumberCount] [dbo].[DBINT] NULL,
	[CustomerNotHomeCount] [dbo].[DBINT] NULL,
	[PersonalCallbackCount] [dbo].[DBINT] NULL,
	[CallbackCount] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[IdlePortTimeToHalf] [dbo].[DBINT] NULL,
	[ReservePortTimeToHalf] [dbo].[DBINT] NULL,
	[CustomerPortTimeToHalf] [dbo].[DBINT] NULL,
	[AllPortsBusyToHalf] [dbo].[DBINT] NULL,
	[IdlePortTimeToday] [dbo].[DBINT] NULL,
	[ReservePortTimeToday] [dbo].[DBINT] NULL,
	[CustomerPortTimeToday] [dbo].[DBINT] NULL,
	[AllPortsBusyToday] [dbo].[DBINT] NULL,
	[AllocatedPorts] [dbo].[DBINT] NULL,
	[RegisteredPorts] [dbo].[DBINT] NULL,
	[ContactsDialedToHalf] [dbo].[DBINT] NULL,
	[CTI_Status] [char](1) NULL,
	[MRStatus] [char](1) NULL,
	[SITToneDetectToHalf] [dbo].[DBINT] NULL,
	[VoiceDetectToHalf] [dbo].[DBINT] NULL,
	[DialerStatus] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKDialer_Log_Real_Time] PRIMARY KEY CLUSTERED 
(
	[DialerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Dialer_Skill_Group_Half_Hour]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Dialer_Skill_Group_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[DialerID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[LinesPerAgentToHalf] [dbo].[DBFLT4] NULL,
	[AgentPercentToHalf] [dbo].[DBFLT4] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[AbandonDetectToHalf] [dbo].[DBINT] NULL,
	[AbandonToIVRToHalf] [dbo].[DBINT] NULL,
	[AgentClosedDetectToHalf] [dbo].[DBINT] NULL,
	[AgentRejectedDetectToHalf] [dbo].[DBINT] NULL,
	[AnsweringMachineDetectToHalf] [dbo].[DBINT] NULL,
	[BusyDetectToHalf] [dbo].[DBINT] NULL,
	[CallbackCountToHalf] [dbo].[DBINT] NULL,
	[CancelledDetectToHalf] [dbo].[DBINT] NULL,
	[ContactsAttemptedToHalf] [dbo].[DBINT] NULL,
	[CustomerAbandonDetectToHalf] [dbo].[DBINT] NULL,
	[CustomerNotHomeCountToHalf] [dbo].[DBINT] NULL,
	[DialerSkillGroupEnabled] [char](1) NULL,
	[DialerSkillGroupMode] [char](1) NULL,
	[DialerSkillGroupType] [char](1) NULL,
	[FaxDetectToHalf] [dbo].[DBINT] NULL,
	[LowNoiseVolumeToHalf] [dbo].[DBINT] NULL,
	[NetworkAnsMachineDetectToHalf] [dbo].[DBINT] NULL,
	[NoAnswerDetectToHalf] [dbo].[DBINT] NULL,
	[NoDialToneDetectToHalf] [dbo].[DBINT] NULL,
	[NoRingBackDetectToHalf] [dbo].[DBINT] NULL,
	[PersonalCallbackCountToHalf] [dbo].[DBINT] NULL,
	[SITToneDetectToHalf] [dbo].[DBINT] NULL,
	[VoiceDetectToHalf] [dbo].[DBINT] NULL,
	[WrongNumberCountToHalf] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKDialer_Skill_Group_Half_Hou] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[DialerID] ASC,
	[SkillGroupSkillTargetID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Dialer_Skill_Group_Half_Ho] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Dialer_Skill_Group_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Dialer_Skill_Group_Real_Time](
	[DialerID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[LinesPerAgent] [dbo].[DBFLT4] NULL,
	[AgentPercent] [dbo].[DBFLT4] NULL,
	[IdleRecords] [dbo].[DBINT] NULL,
	[UsedRecords] [dbo].[DBINT] NULL,
	[CallsAbandonedToday] [dbo].[DBINT] NULL,
	[CallsAbandonedTo5] [dbo].[DBINT] NULL,
	[CallsAbandonedToHalf] [dbo].[DBINT] NULL,
	[CallsAttemptedToday] [dbo].[DBINT] NULL,
	[CallsAttemptedTo5] [dbo].[DBINT] NULL,
	[CallsAttemptedToHalf] [dbo].[DBINT] NULL,
	[CallsCancelledToday] [dbo].[DBINT] NULL,
	[CallsCancelledTo5] [dbo].[DBINT] NULL,
	[CallsCancelledToHalf] [dbo].[DBINT] NULL,
	[DialerSkillGroupEnabled] [char](1) NULL,
	[DialerSkillGroupMode] [char](1) NULL,
	[DialerSkillGroupType] [char](1) NULL,
	[ErrorCountToday] [dbo].[DBINT] NULL,
	[ErrorCountTo5] [dbo].[DBINT] NULL,
	[ErrorCountToHalf] [dbo].[DBINT] NULL,
	[VoiceCountToday] [dbo].[DBINT] NULL,
	[VoiceCountTo5] [dbo].[DBINT] NULL,
	[VoiceCountToHalf] [dbo].[DBINT] NULL,
	[AnsweredCountToday] [dbo].[DBINT] NULL,
	[AnsweredCountTo5] [dbo].[DBINT] NULL,
	[AnsweredCountToHalf] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKDialer_Skill_Group_Real_Tim] PRIMARY KEY CLUSTERED 
(
	[DialerID] ASC,
	[SkillGroupSkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_ECC_Payload]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_ECC_Payload](
	[ECCPayloadID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[SystemDefined] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKECC_Payload] PRIMARY KEY CLUSTERED 
(
	[ECCPayloadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1ECC_Payload] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_ECC_Payload_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_ECC_Payload_Member](
	[ECCPayloadID] [dbo].[DBINT] NOT NULL,
	[ExpandedCallVariableID] [dbo].[DBSMALLINT] NOT NULL,
 CONSTRAINT [XPKECC_Payload_Member] PRIMARY KEY CLUSTERED 
(
	[ECCPayloadID] ASC,
	[ExpandedCallVariableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Enterprise_Route]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Enterprise_Route](
	[EnterpriseRouteID] [dbo].[DBINT] NOT NULL,
	[EntityID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKEnterprise_Route] PRIMARY KEY NONCLUSTERED 
(
	[EnterpriseRouteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Enterprise_Route] UNIQUE CLUSTERED 
(
	[EnterpriseName] ASC,
	[EntityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Enterprise_Route_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Enterprise_Route_Member](
	[EnterpriseRouteID] [dbo].[DBINT] NOT NULL,
	[RouteID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKEnterprise_Route_Member] PRIMARY KEY CLUSTERED 
(
	[EnterpriseRouteID] ASC,
	[RouteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Enterprise_Service]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Enterprise_Service](
	[EnterpriseServiceID] [dbo].[DBINT] NOT NULL,
	[EntityID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKEnterprise_Service] PRIMARY KEY CLUSTERED 
(
	[EnterpriseServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Enterprise_Service] UNIQUE NONCLUSTERED 
(
	[EntityID] ASC,
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Enterprise_Service_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Enterprise_Service_Member](
	[EnterpriseServiceID] [dbo].[DBINT] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKEnterprise_Service_Members] PRIMARY KEY CLUSTERED 
(
	[EnterpriseServiceID] ASC,
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Enterprise_Skill_Group]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Enterprise_Skill_Group](
	[EnterpriseSkillGroupID] [dbo].[DBINT] NOT NULL,
	[EntityID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKEnterprise_Skill_Group] PRIMARY KEY CLUSTERED 
(
	[EnterpriseSkillGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Enterprise_Skill_Group] UNIQUE NONCLUSTERED 
(
	[EntityID] ASC,
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Enterprise_Skill_Group_Membe]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Enterprise_Skill_Group_Membe](
	[EnterpriseSkillGroupID] [dbo].[DBINT] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKEnterprise_Skill_Members] PRIMARY KEY CLUSTERED 
(
	[EnterpriseSkillGroupID] ASC,
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Event]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Event](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[CentralControllerVirtualTime] [dbo].[DBINT] NOT NULL,
	[CentralControllerFileTime] [dbo].[DBDATETIME] NOT NULL,
	[CentralControllerTimeZone] [dbo].[DBINT] NOT NULL,
	[VersionNum] [dbo].[DBSMALLINT] NOT NULL,
	[SystemType] [dbo].[DBSMALLINT] NOT NULL,
	[SystemId] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCodeType] [dbo].[DBSMALLINT] NOT NULL,
	[StatusCode] [dbo].[DBINT] NOT NULL,
	[StatusCodeString] [dbo].[DESCRIPTION] NULL,
	[ProcName] [dbo].[VNAME32] NOT NULL,
	[SourceSystemName] [dbo].[VNAME32] NULL,
	[SourceVirtualTime] [dbo].[DBINT] NOT NULL,
	[SourceFileTime] [dbo].[DBDATETIME] NOT NULL,
	[MessageId] [dbo].[DBINT] NOT NULL,
	[Severity] [varchar](16) NULL,
	[Category] [dbo].[VNAME32] NULL,
	[MessageString] [dbo].[DESCRIPTION] NULL,
	[CustomerId] [dbo].[DBINT] NOT NULL,
	[Side] [dbo].[DBCHAR] NOT NULL,
	[Dword1] [dbo].[DBINT] NULL,
	[Dword2] [dbo].[DBINT] NULL,
	[Dword3] [dbo].[DBINT] NULL,
	[Dword4] [dbo].[DBINT] NULL,
	[Dword5] [dbo].[DBINT] NULL,
	[String1] [varchar](240) NULL,
	[String2] [varchar](240) NULL,
	[String3] [varchar](240) NULL,
	[String4] [varchar](240) NULL,
	[String5] [varchar](240) NULL,
	[BinData] [image] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKEvent] PRIMARY KEY CLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Expanded_Call_Variable]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Expanded_Call_Variable](
	[ExpandedCallVariableID] [dbo].[DBSMALLINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[MaximumLength] [dbo].[DBINT] NOT NULL,
	[MaximumArraySize] [dbo].[DBINT] NULL,
	[ECCArray] [dbo].[DBCHAR] NOT NULL,
	[Enabled] [dbo].[DBCHAR] NOT NULL,
	[GeoTelProvided] [dbo].[DBCHAR] NOT NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Persistent] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKExpanded_Call_Variable] PRIMARY KEY CLUSTERED 
(
	[ExpandedCallVariableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Expanded_Call_Variable] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_ICR_Instance]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_ICR_Instance](
	[ICRInstanceID] [dbo].[DBINT] NOT NULL,
	[NetworkICRInstanceID] [dbo].[DBINT] NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Number] [dbo].[DBINT] NOT NULL,
	[Type] [dbo].[DBSMALLINT] NOT NULL,
	[LastUpdateKey] [dbo].[DBFLT8] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKICR_Instance] PRIMARY KEY CLUSTERED 
(
	[ICRInstanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1ICR_Instance] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_ICR_Node]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_ICR_Node](
	[ICRNodeID] [dbo].[DBINT] NOT NULL,
	[ICRInstanceID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Type] [dbo].[DBSMALLINT] NOT NULL,
	[DomainName] [varchar](64) NOT NULL,
	[SystemName] [dbo].[VNAME32] NOT NULL,
	[ConfigParam] [varchar](255) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKICR_Node] PRIMARY KEY CLUSTERED 
(
	[ICRNodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1ICR_Node] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Import_Log]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Import_Log](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[ScheduleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LogOperation] [dbo].[VNAME32] NOT NULL,
	[WorkstationName] [dbo].[VNAME32] NOT NULL,
	[RowsCopied] [dbo].[DBINT] NOT NULL,
	[Message] [dbo].[DESCRIPTION] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
 CONSTRAINT [XPKImport_Log] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[ScheduleID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Import_Log] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Import_Rule]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Import_Rule](
	[ImportRuleID] [dbo].[DBINT] NOT NULL,
	[ImportRuleName] [dbo].[VNAME32] NOT NULL,
	[Enabled] [dbo].[DBCHAR] NOT NULL,
	[ImportType] [dbo].[DBINT] NOT NULL,
	[FilePath] [varchar](255) NULL,
	[ContactTableName] [varchar](64) NOT NULL,
	[DelimiterType] [dbo].[DBCHAR] NOT NULL,
	[OverwriteEnabled] [dbo].[DBCHAR] NOT NULL,
	[MondayEnabled] [dbo].[DBCHAR] NOT NULL,
	[TuesdayEnabled] [dbo].[DBCHAR] NOT NULL,
	[WednesdayEnabled] [dbo].[DBCHAR] NOT NULL,
	[ThursdayEnabled] [dbo].[DBCHAR] NOT NULL,
	[FridayEnabled] [dbo].[DBCHAR] NOT NULL,
	[SaturdayEnabled] [dbo].[DBCHAR] NOT NULL,
	[SundayEnabled] [dbo].[DBCHAR] NOT NULL,
	[ScheduleStartHours] [dbo].[DBINT] NOT NULL,
	[ScheduleStartMinutes] [dbo].[DBINT] NOT NULL,
	[MonthlyEnabled] [dbo].[DBCHAR] NOT NULL,
	[DayOfMonth] [dbo].[DBINT] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[RenameEnabled] [dbo].[DBCHAR] NOT NULL,
	[RenameMaxVersions] [dbo].[DBSMALLINT] NOT NULL,
	[FilePollingEnabled] [dbo].[DBCHAR] NOT NULL,
	[SPPreImportEnabled] [dbo].[DBCHAR] NOT NULL,
	[SPPostImportEnabled] [dbo].[DBCHAR] NOT NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
	[APIGenerated] [dbo].[DBCHAR] NOT NULL,
 CONSTRAINT [XPKImport_Rule] PRIMARY KEY CLUSTERED 
(
	[ImportRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Import_Rule] UNIQUE NONCLUSTERED 
(
	[ImportRuleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Import_Rule_Clause]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Import_Rule_Clause](
	[ImportRuleID] [dbo].[DBINT] NOT NULL,
	[SequenceNumber] [dbo].[DBINT] NOT NULL,
	[FieldName] [varchar](64) NOT NULL,
	[Type] [dbo].[DBINT] NOT NULL,
	[Length] [dbo].[DBINT] NOT NULL,
	[DecimalPlaces] [dbo].[DBINT] NOT NULL,
	[NullEnabled] [dbo].[DBCHAR] NOT NULL,
	[IndexColumnEnabled] [dbo].[DBCHAR] NOT NULL,
	[StandardColumnType] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
 CONSTRAINT [XPKImport_Rule_Clause] PRIMARY KEY CLUSTERED 
(
	[ImportRuleID] ASC,
	[SequenceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Import_Rule_History]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Import_Rule_History](
	[StartDateTime] [dbo].[DBDATETIME] NOT NULL,
	[ImportRuleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[EndDateTime] [dbo].[DBDATETIME] NOT NULL,
	[GoodRecords] [dbo].[DBINT] NOT NULL,
	[BadRecords] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[TotalRecords] [dbo].[DBINT] NOT NULL,
	[ListImportType] [dbo].[DBINT] NULL,
	[ImportType] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[ImportedToDialingListCount] [dbo].[DBINT] NULL,
	[UnmatchedRegionPrefixCount] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKImport_Rule_History] PRIMARY KEY CLUSTERED 
(
	[StartDateTime] ASC,
	[ImportRuleID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Import_Rule_History] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Import_Rule_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Import_Rule_Real_Time](
	[ImportRuleID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[Status] [dbo].[DBINT] NULL,
	[DateTimeStart] [dbo].[DBDATETIME] NULL,
	[TotalRecords] [dbo].[DBINT] NULL,
	[GoodRecords] [dbo].[DBINT] NULL,
	[BadRecords] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKImport_Rule_Real_Time] PRIMARY KEY CLUSTERED 
(
	[ImportRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Import_Schedule]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Import_Schedule](
	[ImportScheduleID] [dbo].[DBINT] NOT NULL,
	[ScheduleID] [dbo].[DBINT] NOT NULL,
	[AtCommand] [varchar](255) NOT NULL,
	[WorkstationName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKImport_Schedule] PRIMARY KEY CLUSTERED 
(
	[ImportScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Label]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Label](
	[LabelID] [dbo].[DBINT] NOT NULL,
	[ICRInstanceID] [dbo].[DBINT] NULL,
	[CustomerDefinitionID] [dbo].[DBINT] NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[LabelType] [dbo].[DBSMALLINT] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[Label] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKLabel] PRIMARY KEY CLUSTERED 
(
	[LabelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Label] UNIQUE NONCLUSTERED 
(
	[RoutingClientID] ASC,
	[Label] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_License_File]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_License_File](
	[LicenseFileID] [dbo].[DBINT] NOT NULL,
	[DateTimeImported] [dbo].[DBDATETIME] NOT NULL,
	[Importer] [dbo].[VNAME32] NOT NULL,
	[License] [image] NOT NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[Deleter] [dbo].[VNAME32] NULL,
	[DateTimeDeleted] [dbo].[DBDATETIME] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKLicense_File] PRIMARY KEY CLUSTERED 
(
	[LicenseFileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_License_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_License_Real_Time](
	[LicenseDefinitionID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[LicenseUnlimited] [dbo].[DBINT] NOT NULL,
	[LicenseLimit] [dbo].[DBINT] NULL,
	[WarningLimit] [dbo].[DBINT] NULL,
	[EnforcementLimit] [dbo].[DBINT] NULL,
	[LicensesUsed] [dbo].[DBINT] NULL,
	[LicenseState] [dbo].[DBINT] NULL,
	[LicenseStateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKLicense_Real_Time] PRIMARY KEY CLUSTERED 
(
	[LicenseDefinitionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Logger_Meters]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Logger_Meters](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RouteCallDetailTo5] [dbo].[DBINT] NOT NULL,
	[TerminationCallDetailTo5] [dbo].[DBINT] NOT NULL,
	[HalfHourHistoryTo5] [dbo].[DBINT] NOT NULL,
	[FiveMinuteHistoryTo5] [dbo].[DBINT] NOT NULL,
	[MDSMessagesTo5] [dbo].[DBINT] NOT NULL,
	[DataMessagesTo5] [dbo].[DBINT] NOT NULL,
	[ConfigMessagesTo5] [dbo].[DBINT] NOT NULL,
	[EMSMessagesTo5] [dbo].[DBINT] NOT NULL,
	[MessageTimeTo5] [dbo].[DBINT] NOT NULL,
	[DataPagesAllocated] [dbo].[DBFLT8] NOT NULL,
	[LogPagesAllocated] [dbo].[DBFLT8] NOT NULL,
	[DataPagesUsed] [dbo].[DBFLT8] NOT NULL,
	[LogPagesUsed] [dbo].[DBFLT8] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
 CONSTRAINT [XPKLogger_Meters] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Logger_Meters] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Logical_Interface_Controller]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Logical_Interface_Controller](
	[LogicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[LogicalControllerType] [dbo].[DBSMALLINT] NOT NULL,
	[ClientType] [dbo].[DBSMALLINT] NOT NULL,
	[ConfigParam] [varchar](255) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[PrimaryCtiAddress] [varchar](32) NULL,
	[SecondaryCtiAddress] [varchar](32) NULL,
	[HistoricalReportingInterval] [dbo].[DBINT] NOT NULL,
	[ACDTimeEnabled] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKLogical_Interface_Controlle] PRIMARY KEY CLUSTERED 
(
	[LogicalControllerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Logical_Interface_Controll] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Machine_Address]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Machine_Address](
	[MachineAddressID] [dbo].[DBINT] NOT NULL,
	[MachineHostID] [dbo].[DBINT] NOT NULL,
	[AddressType] [dbo].[DBINT] NOT NULL,
	[Address] [varchar](64) NOT NULL,
 CONSTRAINT [XPKMachine_Address] PRIMARY KEY CLUSTERED 
(
	[MachineAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Machine_Connection_Profile]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Machine_Connection_Profile](
	[MachineConnectionProfileID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[UserName] [varchar](255) NULL,
	[Password] [image] NULL,
	[ServiceType] [dbo].[DBINT] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKMachine_Connection_Profile] PRIMARY KEY CLUSTERED 
(
	[MachineConnectionProfileID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Machine_Connection_Profile] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Machine_Host]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Machine_Host](
	[MachineHostID] [dbo].[DBINT] NOT NULL,
	[MachineName] [varchar](128) NOT NULL,
	[MachineType] [dbo].[DBINT] NOT NULL,
	[HostName] [varchar](128) NULL,
	[VMHostID] [dbo].[DBINT] NULL,
	[VMInstanceUuid] [varchar](64) NULL,
	[AutoGenerated] [dbo].[DBCHAR] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKMachine_Host] PRIMARY KEY CLUSTERED 
(
	[MachineHostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Machine_Service]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Machine_Service](
	[MachineServiceID] [dbo].[DBINT] NOT NULL,
	[MachineHostID] [dbo].[DBINT] NOT NULL,
	[MachineAddressID] [dbo].[DBINT] NOT NULL,
	[ServiceType] [dbo].[DBINT] NOT NULL,
	[ServicePort] [dbo].[DBINT] NULL,
	[ServiceUri] [varchar](255) NULL,
	[Pairing] [varchar](128) NULL,
	[UserName] [varchar](255) NULL,
	[Password] [image] NULL,
	[EnablePassword] [image] NULL,
	[AutoGenerated] [dbo].[DBCHAR] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[MachineConnectionProfileID] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKMachine_Service] PRIMARY KEY CLUSTERED 
(
	[MachineServiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Master_Script]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Master_Script](
	[MasterScriptID] [dbo].[DBINT] NOT NULL,
	[CustomerDefinitionID] [dbo].[DBINT] NULL,
	[CustomerIdShadow] [dbo].[DBINT] NOT NULL,
	[EntityID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [varchar](64) NOT NULL,
	[CurrentVersion] [dbo].[DBINT] NOT NULL,
	[NextAvailableVersion] [dbo].[DBINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ScriptType] [dbo].[DBSMALLINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKMaster_Script] PRIMARY KEY CLUSTERED 
(
	[MasterScriptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Master_Script] UNIQUE NONCLUSTERED 
(
	[CustomerIdShadow] ASC,
	[EntityID] ASC,
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Media_Class]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Media_Class](
	[MediaClassID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[TaskLife] [dbo].[DBINT] NOT NULL,
	[TaskStartTimeout] [dbo].[DBINT] NOT NULL,
	[MaxTaskDuration] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKMedia_Class] PRIMARY KEY CLUSTERED 
(
	[MediaClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Media_Class] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Media_Routing_Domain]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Media_Routing_Domain](
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[MediaClassID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Interruptible] [dbo].[DBCHAR] NOT NULL,
	[TaskLife] [dbo].[DBINT] NULL,
	[TaskStartTimeout] [dbo].[DBINT] NULL,
	[ServiceLevelThreshold] [dbo].[DBINT] NOT NULL,
	[ServiceLevelType] [dbo].[DBSMALLINT] NOT NULL,
	[MaxTaskDuration] [dbo].[DBINT] NULL,
	[MaxCallsInQueue] [dbo].[DBINT] NULL,
	[MaxCallsInQueuePerCallType] [dbo].[DBINT] NULL,
	[MaxTimeInQueue] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKMedia_Routing_Domain] PRIMARY KEY NONCLUSTERED 
(
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Media_Routing_Domain] UNIQUE CLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_NIC_Parameter]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_NIC_Parameter](
	[NICParameterID] [dbo].[DBINT] NOT NULL,
	[LogicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[Parameter] [varchar](50) NOT NULL,
	[Value] [varchar](255) NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKNIC_Parameter] PRIMARY KEY CLUSTERED 
(
	[NICParameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1NIC_Parameter] UNIQUE NONCLUSTERED 
(
	[LogicalControllerID] ASC,
	[RoutingClientID] ASC,
	[Parameter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Network_Event_Detail]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Network_Event_Detail](
	[CallLegID] [dbo].[DBSMALLINT] NOT NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NOT NULL,
	[RouterCallKey] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[Event] [dbo].[DBSMALLINT] NULL,
	[Duration] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[Value1] [dbo].[DBINT] NULL,
	[Value2] [varchar](128) NULL,
 CONSTRAINT [XAK1Network_Event_Detail] UNIQUE CLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Network_Trunk_Group]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Network_Trunk_Group](
	[NetworkTrunkGroupID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[LogicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKNetwork_Trunk_Group] PRIMARY KEY CLUSTERED 
(
	[NetworkTrunkGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Network_Trunk_Group] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Network_Trunk_Group_Half_Hou]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Network_Trunk_Group_Half_Hou](
	[NetworkTrunkGroupID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[AllTrunksBusyToHalf] [dbo].[DBINT] NULL,
	[CallsAbandonedToHalf] [dbo].[DBINT] NULL,
	[CallsInToHalf] [dbo].[DBINT] NULL,
	[CallsOutToHalf] [dbo].[DBINT] NULL,
	[InServiceTimeToHalf] [dbo].[DBINT] NULL,
	[InUseInboundTimeToHalf] [dbo].[DBINT] NULL,
	[InUseOutboundTimeToHalf] [dbo].[DBINT] NULL,
	[TrunksIdle] [dbo].[DBINT] NULL,
	[TrunksInService] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKNetwork_Trunk_Group_Half_Ho] PRIMARY KEY CLUSTERED 
(
	[NetworkTrunkGroupID] ASC,
	[DateTime] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Network_Trunk_Group_Half_H] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Network_Trunk_Group_Real_Tim]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Network_Trunk_Group_Real_Tim](
	[NetworkTrunkGroupID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[AllTrunksBusyHalf] [dbo].[DBINT] NULL,
	[AllTrunksBusyToday] [dbo].[DBINT] NULL,
	[CallsAbandonedHalf] [dbo].[DBINT] NULL,
	[CallsAbandonedToday] [dbo].[DBINT] NULL,
	[CallsInHalf] [dbo].[DBINT] NULL,
	[CallsInNow] [dbo].[DBINT] NULL,
	[CallsInToday] [dbo].[DBINT] NULL,
	[CallsOutHalf] [dbo].[DBINT] NULL,
	[CallsOutNow] [dbo].[DBINT] NULL,
	[CallsOutToday] [dbo].[DBINT] NULL,
	[InServiceTimeHalf] [dbo].[DBINT] NULL,
	[InServiceTimeToday] [dbo].[DBINT] NULL,
	[InUseInboundTimeHalf] [dbo].[DBINT] NULL,
	[InUseInboundTimeToday] [dbo].[DBINT] NULL,
	[InUseOutboundTimeHalf] [dbo].[DBINT] NULL,
	[InUseOutboundTimeToday] [dbo].[DBINT] NULL,
	[TrunksIdle] [dbo].[DBINT] NULL,
	[TrunksInService] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKNetwork_Trunk_Group_Real_Ti] PRIMARY KEY CLUSTERED 
(
	[NetworkTrunkGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Network_Vru]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Network_Vru](
	[NetworkTargetID] [dbo].[DBINT] NOT NULL,
	[ECCPayloadID] [dbo].[DBINT] NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Type] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKNetwork_Vru] PRIMARY KEY CLUSTERED 
(
	[NetworkTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Network_Vru] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Network_Vru_Bank]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Network_Vru_Bank](
	[NetworkTargetID] [dbo].[DBINT] NOT NULL,
	[TranslationRouteSkillTargetID] [dbo].[DBINT] NULL,
	[NetworkVruNetworkTargetID] [dbo].[DBINT] NOT NULL,
	[TrunkGroupID] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKNetwork_Vru_Bank] PRIMARY KEY CLUSTERED 
(
	[NetworkTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Network_Vru_Bank] UNIQUE NONCLUSTERED 
(
	[TrunkGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Network_Vru_Script]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Network_Vru_Script](
	[NetworkVruScriptID] [dbo].[DBINT] NOT NULL,
	[NetworkTargetID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[VruScriptName] [varchar](40) NOT NULL,
	[CustomerDefinitionID] [dbo].[DBINT] NULL,
	[Interruptible] [dbo].[DBCHAR] NOT NULL,
	[Overridable] [dbo].[DBCHAR] NOT NULL,
	[ConfigParam] [varchar](255) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Timeout] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKNetwork_VRU_Script] PRIMARY KEY CLUSTERED 
(
	[NetworkVruScriptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Network_VRU_Script] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK2Network_VRU_Script] UNIQUE NONCLUSTERED 
(
	[VruScriptName] ASC,
	[NetworkTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Object_Access_Xref]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Object_Access_Xref](
	[ObjectAccessXrefID] [dbo].[DBINT] NOT NULL,
	[ObjectType] [dbo].[DBINT] NOT NULL,
	[AccessLevel] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKObject_Access_Xref] PRIMARY KEY CLUSTERED 
(
	[ObjectAccessXrefID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Object_Access_Xref] UNIQUE NONCLUSTERED 
(
	[AccessLevel] ASC,
	[ObjectType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Object_List]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Object_List](
	[ObjectType] [dbo].[DBINT] NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
 CONSTRAINT [XPKSecurity__Object] PRIMARY KEY CLUSTERED 
(
	[ObjectType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Object_List] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Object_Security]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Object_Security](
	[ObjectSecurityID] [dbo].[DBINT] NOT NULL,
	[ObjectType] [dbo].[DBINT] NOT NULL,
	[ObjectID] [dbo].[DBINT] NOT NULL,
	[UserGroupName] [varchar](64) NOT NULL,
	[AccessLevel] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKObject_Security] PRIMARY KEY NONCLUSTERED 
(
	[ObjectSecurityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Object_Security] UNIQUE CLUSTERED 
(
	[UserGroupName] ASC,
	[ObjectID] ASC,
	[ObjectType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Peripheral]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Peripheral](
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[LogicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[PeripheralName] [dbo].[VNAME32] NOT NULL,
	[Location] [dbo].[VNAME32] NULL,
	[AnsweredShortCallsThreshold] [dbo].[DBINT] NULL,
	[ConfigParam] [varchar](255) NULL,
	[AbandonedCallWaitTime] [dbo].[DBSMALLINT] NOT NULL,
	[PeripheralServiceLevelType] [dbo].[DBSMALLINT] NOT NULL,
	[CallControlVariableMap] [varchar](128) NULL,
	[AvailableHoldoffDelay] [dbo].[DBSMALLINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[SubSkillGroupMask] [varchar](64) NULL,
	[ClientType] [dbo].[DBSMALLINT] NOT NULL,
	[AgentDeskSettingsID] [dbo].[DBINT] NULL,
	[AgentReporting] [dbo].[DBCHAR] NOT NULL,
	[AgentAutoConfig] [dbo].[DBCHAR] NOT NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[AgentEventDetail] [dbo].[DBCHAR] NOT NULL,
	[PeripheralAutoConfig] [dbo].[DBCHAR] NOT NULL,
	[InternalIPTAOnly] [dbo].[DBCHAR] NOT NULL,
	[AgentTargetingMethod] [dbo].[DBINT] NOT NULL,
	[MultilineAgentControl] [dbo].[DBINT] NOT NULL,
	[MultilineAgentStateBehavior] [dbo].[DBINT] NOT NULL,
	[MaxPeripheralAgentQueuePair] [dbo].[DBINT] NULL,
	[MaxConcurrentAgentLimit] [dbo].[DBINT] NULL,
	[CustomerDefinitionID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKPeripheral] PRIMARY KEY CLUSTERED 
(
	[PeripheralID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Peripheral] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Peripheral_Default_Route]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Peripheral_Default_Route](
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RouteID] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKPeripheral_Default_Route] PRIMARY KEY CLUSTERED 
(
	[PeripheralID] ASC,
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Peripheral_Half_Hour]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Peripheral_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActivePeripheralDataTimeToHalf] [dbo].[DBINT] NULL,
	[ActiveRoutingClientTimeToHalf] [dbo].[DBINT] NULL,
	[ActivePeripheralTimeToHalf] [dbo].[DBINT] NULL,
	[ActiveCTIServerTimeToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[TotalCallsInProgressSamples] [dbo].[DBINT] NULL,
	[NumberOfSamples] [dbo].[DBINT] NULL,
	[MaxCallsInProgress] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[MaxNumberLoggedOnAgentsToHalf] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKPeripheral_Half_Hour] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[PeripheralID] ASC,
	[TimeZone] ASC,
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Peripheral_Half_Hour] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Peripheral_Interval]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Peripheral_Interval](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActivePeripheralDataTime] [dbo].[DBINT] NULL,
	[ActiveRoutingClientTime] [dbo].[DBINT] NULL,
	[ActivePeripheralTime] [dbo].[DBINT] NULL,
	[ActiveCTIServerTime] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[TotalCallsInProgressSamples] [dbo].[DBINT] NULL,
	[NumberOfSamples] [dbo].[DBINT] NULL,
	[MaxCallsInProgress] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[MaxNumberLoggedOnAgents] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[MaxCVPCallControlPorts] [dbo].[DBINT] NULL,
	[MaxVRUPorts] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKPeripheral_Interval] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[PeripheralID] ASC,
	[TimeZone] ASC,
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Peripheral_Interval] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Peripheral_Monitor]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Peripheral_Monitor](
	[PeripheralMonitorID] [dbo].[DBINT] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[Extension] [varchar](32) NULL,
	[ParamString] [varchar](48) NULL,
	[PeripheralMonitorType] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKPeripheral_Monitor] PRIMARY KEY CLUSTERED 
(
	[PeripheralMonitorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Peripheral_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Peripheral_Real_Time](
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[PeripheralTimeZone] [dbo].[DBINT] NULL,
	[Status] [dbo].[DBINT] NULL,
	[Online] [dbo].[DBINT] NOT NULL,
	[PeripheralTimeOffset] [dbo].[DBINT] NOT NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[AgentsLoggedOn] [dbo].[DBINT] NULL,
	[CallsOfferedHalf] [dbo].[DBINT] NULL,
	[CallsOfferedToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToday] [dbo].[DBINT] NULL,
	[ServiceLevelAbandHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsToday] [dbo].[DBINT] NULL,
	[ServiceLevelHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelToday] [dbo].[DBFLT4] NULL,
	[PeripheralData1] [dbo].[DBINT] NOT NULL,
	[PeripheralData2] [dbo].[DBINT] NOT NULL,
	[PeripheralData3] [dbo].[DBINT] NOT NULL,
	[PeripheralData4] [dbo].[DBINT] NOT NULL,
	[PeripheralData5] [dbo].[DBINT] NOT NULL,
	[PeripheralData6] [dbo].[DBINT] NOT NULL,
	[PeripheralData7] [dbo].[DBINT] NOT NULL,
	[PeripheralData8] [dbo].[DBINT] NOT NULL,
	[PeripheralData9] [dbo].[DBINT] NOT NULL,
	[PeripheralData10] [dbo].[DBINT] NOT NULL,
	[PeripheralData11] [dbo].[DBINT] NOT NULL,
	[PeripheralData12] [dbo].[DBINT] NOT NULL,
	[PeripheralData13] [dbo].[DBINT] NOT NULL,
	[PeripheralData14] [dbo].[DBINT] NOT NULL,
	[PeripheralData15] [dbo].[DBINT] NOT NULL,
	[PeripheralData16] [dbo].[DBINT] NOT NULL,
	[Mode] [dbo].[DBINT] NULL,
	[CurrentHalfHour] [dbo].[DBDATETIME] NULL,
	[UserControl] [dbo].[DBINT] NULL,
	[CallsRoutedHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToday] [dbo].[DBINT] NULL,
	[CTIServerOnline] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKPeripheral_Real_Time] PRIMARY KEY CLUSTERED 
(
	[PeripheralID] ASC,
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Peripheral_Target]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Peripheral_Target](
	[NetworkTargetID] [dbo].[DBINT] NOT NULL,
	[NetworkTrunkGroupID] [dbo].[DBINT] NOT NULL,
	[RouteID] [dbo].[DBINT] NULL,
	[DNIS] [dbo].[VNAME32] NOT NULL,
	[DelayBeforeQueue] [dbo].[DBSMALLINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKPeripheral_Target] PRIMARY KEY CLUSTERED 
(
	[NetworkTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Peripheral_Target] UNIQUE NONCLUSTERED 
(
	[NetworkTrunkGroupID] ASC,
	[DNIS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Persistent_Variable]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Persistent_Variable](
	[UserVariableID] [dbo].[DBINT] NOT NULL,
	[ForeignKey1] [dbo].[DBINT] NOT NULL,
	[ValueInt] [dbo].[DBINT] NULL,
	[ValueFloat] [dbo].[DBFLT8] NULL,
	[ValueChar] [dbo].[DESCRIPTION] NULL,
	[ValueDateTime] [dbo].[DBDATETIME] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
 CONSTRAINT [XPKPersistent_Variable] PRIMARY KEY CLUSTERED 
(
	[UserVariableID] ASC,
	[ForeignKey1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Persistent_Variable] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Person]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Person](
	[PersonID] [dbo].[DBINT] NOT NULL,
	[FirstName] [dbo].[VNAME32] NOT NULL,
	[LastName] [dbo].[VNAME32] NOT NULL,
	[LoginName] [varchar](255) NOT NULL,
	[LoginNameShadow] [varchar](255) NOT NULL,
	[Password] [varchar](32) NULL,
	[PasswordChangeRequired] [dbo].[DBSMALLINT] NOT NULL,
	[PasswordLastChangedTime] [dbo].[DBDATETIME] NULL,
	[LoginEnabled] [dbo].[DBCHAR] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
	[VerificationStatus] [char](1) NULL,
	[SSOEnabled] [dbo].[DBSMALLINT] NOT NULL,
 CONSTRAINT [XPKPerson] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK2Person] UNIQUE NONCLUSTERED 
(
	[LoginNameShadow] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Phone_Strategy]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Phone_Strategy](
	[PhoneStrategyID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseInt6] [dbo].[DBINT] NULL,
	[FutureUseInt7] [dbo].[DBINT] NULL,
	[FutureUseInt8] [dbo].[DBINT] NULL,
	[FutureUseInt9] [dbo].[DBINT] NULL,
	[FutureUseInt10] [dbo].[DBINT] NULL,
	[FutureUseInt11] [dbo].[DBINT] NULL,
	[FutureUseInt12] [dbo].[DBINT] NULL,
	[FutureUseInt13] [dbo].[DBINT] NULL,
	[FutureUseInt14] [dbo].[DBINT] NULL,
	[FutureUseInt15] [dbo].[DBINT] NULL,
	[FutureUseInt16] [dbo].[DBINT] NULL,
	[FutureUseInt17] [dbo].[DBINT] NULL,
	[FutureUseInt18] [dbo].[DBINT] NULL,
	[FutureUseInt19] [dbo].[DBINT] NULL,
	[FutureUseInt20] [dbo].[DBINT] NULL,
	[FutureUseDbchar1] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar2] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar3] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar4] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar5] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar6] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar7] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar8] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar9] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar10] [dbo].[DBCHAR] NOT NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
	[FutureUseVarchar4] [varchar](64) NULL,
	[FutureUseVarchar5] [varchar](64) NULL,
	[FutureUseVarchar6] [varchar](64) NULL,
	[FutureUseVarchar7] [varchar](64) NULL,
	[FutureUseVarchar8] [varchar](64) NULL,
	[FutureUseVarchar9] [varchar](64) NULL,
	[FutureUseVarchar10] [varchar](64) NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKPhone_Strategy] PRIMARY KEY CLUSTERED 
(
	[PhoneStrategyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Phone_Strategy_Node]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Phone_Strategy_Node](
	[PhoneStrategyNodeID] [dbo].[DBINT] NOT NULL,
	[PhoneStrategyID] [dbo].[DBINT] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseInt6] [dbo].[DBINT] NULL,
	[FutureUseInt7] [dbo].[DBINT] NULL,
	[FutureUseInt8] [dbo].[DBINT] NULL,
	[FutureUseInt9] [dbo].[DBINT] NULL,
	[FutureUseInt10] [dbo].[DBINT] NULL,
	[FutureUseInt11] [dbo].[DBINT] NULL,
	[FutureUseInt12] [dbo].[DBINT] NULL,
	[FutureUseInt13] [dbo].[DBINT] NULL,
	[FutureUseInt14] [dbo].[DBINT] NULL,
	[FutureUseInt15] [dbo].[DBINT] NULL,
	[FutureUseInt16] [dbo].[DBINT] NULL,
	[FutureUseInt17] [dbo].[DBINT] NULL,
	[FutureUseInt18] [dbo].[DBINT] NULL,
	[FutureUseInt19] [dbo].[DBINT] NULL,
	[FutureUseInt20] [dbo].[DBINT] NULL,
	[FutureUseInt21] [dbo].[DBINT] NULL,
	[FutureUseInt22] [dbo].[DBINT] NULL,
	[FutureUseInt23] [dbo].[DBINT] NULL,
	[FutureUseInt24] [dbo].[DBINT] NULL,
	[FutureUseInt25] [dbo].[DBINT] NULL,
	[FutureUseInt26] [dbo].[DBINT] NULL,
	[FutureUseInt27] [dbo].[DBINT] NULL,
	[FutureUseInt28] [dbo].[DBINT] NULL,
	[FutureUseInt29] [dbo].[DBINT] NULL,
	[FutureUseInt30] [dbo].[DBINT] NULL,
	[FutureUseInt31] [dbo].[DBINT] NULL,
	[FutureUseInt32] [dbo].[DBINT] NULL,
	[FutureUseInt33] [dbo].[DBINT] NULL,
	[FutureUseInt34] [dbo].[DBINT] NULL,
	[FutureUseInt35] [dbo].[DBINT] NULL,
	[FutureUseInt36] [dbo].[DBINT] NULL,
	[FutureUseInt37] [dbo].[DBINT] NULL,
	[FutureUseInt38] [dbo].[DBINT] NULL,
	[FutureUseInt39] [dbo].[DBINT] NULL,
	[FutureUseInt40] [dbo].[DBINT] NULL,
	[FutureUseInt41] [dbo].[DBINT] NULL,
	[FutureUseInt42] [dbo].[DBINT] NULL,
	[FutureUseInt43] [dbo].[DBINT] NULL,
	[FutureUseInt44] [dbo].[DBINT] NULL,
	[FutureUseInt45] [dbo].[DBINT] NULL,
	[FutureUseInt46] [dbo].[DBINT] NULL,
	[FutureUseInt47] [dbo].[DBINT] NULL,
	[FutureUseInt48] [dbo].[DBINT] NULL,
	[FutureUseInt49] [dbo].[DBINT] NULL,
	[FutureUseInt50] [dbo].[DBINT] NULL,
	[FutureUseInt51] [dbo].[DBINT] NULL,
	[FutureUseInt52] [dbo].[DBINT] NULL,
	[FutureUseInt53] [dbo].[DBINT] NULL,
	[FutureUseInt54] [dbo].[DBINT] NULL,
	[FutureUseInt55] [dbo].[DBINT] NULL,
	[FutureUseInt56] [dbo].[DBINT] NULL,
	[FutureUseInt57] [dbo].[DBINT] NULL,
	[FutureUseInt58] [dbo].[DBINT] NULL,
	[FutureUseInt59] [dbo].[DBINT] NULL,
	[FutureUseInt60] [dbo].[DBINT] NULL,
	[FutureUseInt61] [dbo].[DBINT] NULL,
	[FutureUseInt62] [dbo].[DBINT] NULL,
	[FutureUseInt63] [dbo].[DBINT] NULL,
	[FutureUseInt64] [dbo].[DBINT] NULL,
	[FutureUseInt65] [dbo].[DBINT] NULL,
	[FutureUseInt66] [dbo].[DBINT] NULL,
	[FutureUseInt67] [dbo].[DBINT] NULL,
	[FutureUseInt68] [dbo].[DBINT] NULL,
	[FutureUseInt69] [dbo].[DBINT] NULL,
	[FutureUseInt70] [dbo].[DBINT] NULL,
	[FutureUseInt71] [dbo].[DBINT] NULL,
	[FutureUseInt72] [dbo].[DBINT] NULL,
	[FutureUseInt73] [dbo].[DBINT] NULL,
	[FutureUseInt74] [dbo].[DBINT] NULL,
	[FutureUseInt75] [dbo].[DBINT] NULL,
	[FutureUseInt76] [dbo].[DBINT] NULL,
	[FutureUseInt77] [dbo].[DBINT] NULL,
	[FutureUseInt78] [dbo].[DBINT] NULL,
	[FutureUseInt79] [dbo].[DBINT] NULL,
	[FutureUseInt80] [dbo].[DBINT] NULL,
	[FutureUseDbchar1] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar2] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar3] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar4] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar5] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar6] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar7] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar8] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar9] [dbo].[DBCHAR] NOT NULL,
	[FutureUseDbchar10] [dbo].[DBCHAR] NOT NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
	[FutureUseVarchar4] [varchar](64) NULL,
	[FutureUseVarchar5] [varchar](64) NULL,
	[FutureUseVarchar6] [varchar](64) NULL,
	[FutureUseVarchar7] [varchar](64) NULL,
	[FutureUseVarchar8] [varchar](64) NULL,
	[FutureUseVarchar9] [varchar](64) NULL,
	[FutureUseVarchar10] [varchar](64) NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKPhone_Strategy_Node] PRIMARY KEY CLUSTERED 
(
	[PhoneStrategyNodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Physical_Controller_Half_Hou]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Physical_Controller_Half_Hou](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PhysicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ActivePGAgentSideATimeToHalf] [dbo].[DBINT] NULL,
	[ActivePGAgentSideBTimeToHalf] [dbo].[DBINT] NULL,
	[DMPInServiceTimeToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKPhysical_Controller_Half_Ho] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[PhysicalControllerID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Physical_Controller_Half_H] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Physical_Interface_Controlle]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Physical_Interface_Controlle](
	[PhysicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[LogicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKPhysical_Interface_Controll] PRIMARY KEY CLUSTERED 
(
	[PhysicalControllerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Physical_Interface_Control] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Precision_Q_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Precision_Q_Real_Time](
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[AnswerWaitTimeTo5] [dbo].[DBINT] NULL,
	[ApplicationAvailable] [dbo].[DBINT] NULL,
	[Avail] [dbo].[DBINT] NULL,
	[AvailTimeTo5] [dbo].[DBINT] NULL,
	[AvgHandledCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[AvgHandledCallsTimeTo5] [dbo].[DBINT] NULL,
	[BusyOther] [dbo].[DBINT] NULL,
	[BusyOtherTimeTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[CallsOfferedTo5] [dbo].[DBINT] NULL,
	[HandledCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[HandledCallsTimeTo5] [dbo].[DBINT] NULL,
	[Hold] [dbo].[DBINT] NULL,
	[HoldTimeTo5] [dbo].[DBINT] NULL,
	[IcmAvailable] [dbo].[DBINT] NULL,
	[InterruptedTimeTo5] [dbo].[DBINT] NULL,
	[LoggedOn] [dbo].[DBINT] NULL,
	[LoggedOnTimeTo5] [dbo].[DBINT] NULL,
	[NotReady] [dbo].[DBINT] NULL,
	[NotReadyTimeTo5] [dbo].[DBINT] NULL,
	[NumAgentsInterruptedNow] [dbo].[DBINT] NULL,
	[PercentUtilizationTo5] [dbo].[DBFLT4] NULL,
	[Ready] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTo5] [dbo].[DBINT] NULL,
	[CallsAbandQTo5] [dbo].[DBINT] NULL,
	[CallsAbandToAgentTo5] [dbo].[DBINT] NULL,
	[CallsAbandDequeuedTo5] [dbo].[DBINT] NULL,
	[CallsDequeuedTo5] [dbo].[DBINT] NULL,
	[CallsQNow] [dbo].[DBINT] NULL,
	[LongestCallInQ] [dbo].[DBDATETIME] NULL,
	[ServiceLevelCallsAbandTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeuedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsTo5] [dbo].[DBINT] NULL,
	[ServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelRONATo5] [dbo].[DBINT] NULL,
	[TalkingIn] [dbo].[DBINT] NULL,
	[TalkingOther] [dbo].[DBINT] NULL,
	[TalkInTimeTo5] [dbo].[DBINT] NULL,
	[TalkOtherTimeTo5] [dbo].[DBINT] NULL,
	[TalkTimeTo5] [dbo].[DBINT] NULL,
	[TransferInCallsTimeTo5] [dbo].[DBINT] NULL,
	[TransferInCallsTo5] [dbo].[DBINT] NULL,
	[TransferOutCallsTo5] [dbo].[DBINT] NULL,
	[WorkNotReady] [dbo].[DBINT] NULL,
	[WorkNotReadyTimeTo5] [dbo].[DBINT] NULL,
	[WorkReady] [dbo].[DBINT] NULL,
	[WorkReadyTimeTo5] [dbo].[DBINT] NULL,
	[AttributeID1] [dbo].[DBINT] NULL,
	[AttributeID2] [dbo].[DBINT] NULL,
	[AttributeID3] [dbo].[DBINT] NULL,
	[AttributeID4] [dbo].[DBINT] NULL,
	[AttributeID5] [dbo].[DBINT] NULL,
	[AttributeID6] [dbo].[DBINT] NULL,
	[AttributeID7] [dbo].[DBINT] NULL,
	[AttributeID8] [dbo].[DBINT] NULL,
	[AttributeID9] [dbo].[DBINT] NULL,
	[AttributeID10] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKPrecision_Q_Real_Time] PRIMARY KEY CLUSTERED 
(
	[PrecisionQueueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Precision_Q_Step_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Precision_Q_Step_Real_Time](
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueStepID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[AgentsLoggedIn] [dbo].[DBINT] NULL,
	[AgentsAvailable] [dbo].[DBINT] NULL,
	[CallsInQueue] [dbo].[DBINT] NULL,
	[LongestCallInQueue] [dbo].[DBDATETIME] NULL,
	[CallsInQueueTime] [dbo].[DBINT] NULL,
	[AvgCallsInQueueTime] [dbo].[DBINT] NULL,
	[NextAvailAgent] [dbo].[DBDATETIME] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKPrecision_Q_Step_Real_Time] PRIMARY KEY CLUSTERED 
(
	[PrecisionQueueID] ASC,
	[PrecisionQueueStepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Precision_Queue]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Precision_Queue](
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[AgentOrdering] [dbo].[DBINT] NOT NULL,
	[CallOrdering] [dbo].[DBINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ServiceLevelThreshold] [dbo].[DBINT] NOT NULL,
	[ServiceLevelType] [dbo].[DBSMALLINT] NOT NULL,
	[ForceExpandingQueue] [dbo].[DBCHAR] NOT NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKPrecision_Queue] PRIMARY KEY CLUSTERED 
(
	[PrecisionQueueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Precision_Queue] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Precision_Queue_Step]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Precision_Queue_Step](
	[PrecisionQueueStepID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NULL,
	[StepOrder] [dbo].[DBINT] NOT NULL,
	[WaitTime] [dbo].[DBINT] NOT NULL,
	[ConsiderIf] [varchar](255) NULL,
	[NextStep] [dbo].[DBCHAR] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
 CONSTRAINT [XPKPrecision_Queue_Step] PRIMARY KEY CLUSTERED 
(
	[PrecisionQueueStepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Precision_Queue_Term]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Precision_Queue_Term](
	[PrecisionQueueTermID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueStepID] [dbo].[DBINT] NULL,
	[PrecisionQueueID] [dbo].[DBINT] NULL,
	[AttributeID] [dbo].[DBINT] NULL,
	[AttributeSetID] [dbo].[DBINT] NULL,
	[TermOrder] [dbo].[DBINT] NOT NULL,
	[ParenCount] [dbo].[DBINT] NOT NULL,
	[TermRelation] [dbo].[DBINT] NOT NULL,
	[AttributeRelation] [dbo].[DBINT] NOT NULL,
	[Value1] [varchar](255) NULL,
	[Value2] [varchar](255) NULL,
 CONSTRAINT [XPKPrecision_Queue_Term] PRIMARY KEY CLUSTERED 
(
	[PrecisionQueueTermID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Query_Rule]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Query_Rule](
	[QueryRuleID] [dbo].[DBINT] NOT NULL,
	[QueryRuleName] [dbo].[VNAME32] NOT NULL,
	[ImportRuleID] [dbo].[DBINT] NOT NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[Enabled] [dbo].[DBCHAR] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
	[APIGenerated] [dbo].[DBCHAR] NOT NULL,
 CONSTRAINT [XPKQuery_Rule] PRIMARY KEY CLUSTERED 
(
	[QueryRuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Query_Rule] UNIQUE NONCLUSTERED 
(
	[QueryRuleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Query_Rule_Clause]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Query_Rule_Clause](
	[QueryRuleID] [dbo].[DBINT] NOT NULL,
	[SequenceNumber] [dbo].[DBINT] NOT NULL,
	[RuleData] [varchar](255) NOT NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[FutureUseVarchar1] [varchar](64) NULL,
	[FutureUseVarchar2] [varchar](64) NULL,
	[FutureUseVarchar3] [varchar](64) NULL,
 CONSTRAINT [XPKList_Rule] PRIMARY KEY CLUSTERED 
(
	[QueryRuleID] ASC,
	[SequenceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Reason_Code]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Reason_Code](
	[ReasonCodeID] [dbo].[DBINT] NOT NULL,
	[ReasonCode] [dbo].[DBINT] NOT NULL,
	[ReasonText] [varchar](40) NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKReason_Code] PRIMARY KEY CLUSTERED 
(
	[ReasonCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Reason_Code] UNIQUE NONCLUSTERED 
(
	[ReasonCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Recurring_Schedule_Map]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Recurring_Schedule_Map](
	[ScheduleID] [dbo].[DBINT] NOT NULL,
	[SequenceNumber] [dbo].[DBINT] NOT NULL,
	[Type] [dbo].[DBSMALLINT] NOT NULL,
	[MonthOfYear] [dbo].[DBSMALLINT] NOT NULL,
	[DayOfMonth] [dbo].[DBSMALLINT] NOT NULL,
	[DayType] [dbo].[DBSMALLINT] NOT NULL,
	[DayPosition] [dbo].[DBSMALLINT] NOT NULL,
	[DayFlags] [dbo].[DBINT] NOT NULL,
	[StartMonth] [dbo].[DBSMALLINT] NOT NULL,
	[StartDay] [dbo].[DBSMALLINT] NOT NULL,
	[StartYear] [dbo].[DBINT] NOT NULL,
	[EndMonth] [dbo].[DBSMALLINT] NOT NULL,
	[EndDay] [dbo].[DBSMALLINT] NOT NULL,
	[EndYear] [dbo].[DBINT] NOT NULL,
	[StartHour] [dbo].[DBSMALLINT] NOT NULL,
	[StartMinute] [dbo].[DBSMALLINT] NOT NULL,
	[StartSecond] [dbo].[DBSMALLINT] NOT NULL,
	[EndHour] [dbo].[DBSMALLINT] NOT NULL,
	[EndMinute] [dbo].[DBSMALLINT] NOT NULL,
	[EndSecond] [dbo].[DBSMALLINT] NOT NULL,
	[Long1] [dbo].[DBINT] NULL,
	[Long2] [dbo].[DBINT] NULL,
	[Long3] [dbo].[DBINT] NULL,
	[Long4] [dbo].[DBINT] NULL,
	[Bool1] [dbo].[DBCHAR] NOT NULL,
	[Bool2] [dbo].[DBCHAR] NOT NULL,
 CONSTRAINT [XPKRecurring_Schedule_Map] PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC,
	[SequenceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Route]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Route](
	[RouteID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[ServiceSkillTargetID] [dbo].[DBINT] NULL,
	[SkillTargetID] [dbo].[DBINT] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKRoute] PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Route] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Route_Call_Detail]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Route_Call_Detail](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DialedNumberID] [dbo].[DBINT] NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NOT NULL,
	[RouterCallKey] [dbo].[DBINT] NOT NULL,
	[RouteID] [dbo].[DBINT] NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[RequestType] [dbo].[DBSMALLINT] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[OriginatorType] [dbo].[DBSMALLINT] NULL,
	[Unused] [char](4) NULL,
	[RoutingClientCallKey] [dbo].[DBINT] NULL,
	[Priority] [dbo].[DBSMALLINT] NULL,
	[MsgOrigin] [dbo].[DBSMALLINT] NULL,
	[Variable1] [varchar](40) NULL,
	[Variable2] [varchar](40) NULL,
	[Variable3] [varchar](40) NULL,
	[Variable4] [varchar](40) NULL,
	[Variable5] [varchar](40) NULL,
	[UserToUser] [varchar](131) NULL,
	[ANI] [dbo].[VNAME32] NULL,
	[CDPD] [varchar](30) NULL,
	[CED] [varchar](30) NULL,
	[ScriptID] [dbo].[DBINT] NULL,
	[FinalObjectID] [dbo].[DBINT] NULL,
	[CallSegmentTime] [dbo].[DBINT] NULL,
	[NetQTime] [dbo].[DBINT] NULL,
	[CallTypeID] [dbo].[DBINT] NULL,
	[RouterErrorCode] [dbo].[DBSMALLINT] NULL,
	[CallTrace] [image] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[LabelID] [dbo].[DBINT] NULL,
	[Originator] [varchar](8) NULL,
	[Variable6] [varchar](40) NULL,
	[Variable7] [varchar](40) NULL,
	[Variable8] [varchar](40) NULL,
	[Variable9] [varchar](40) NULL,
	[Variable10] [varchar](40) NULL,
	[TargetLabelID] [dbo].[DBINT] NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[RouterQueueTime] [dbo].[DBINT] NULL,
	[VruScripts] [dbo].[DBINT] NULL,
	[Label] [dbo].[VNAME32] NULL,
	[TargetLabel] [dbo].[VNAME32] NULL,
	[DialedNumberString] [dbo].[VNAME32] NULL,
	[BeganRoutingDateTime] [dbo].[DBDATETIME] NULL,
	[BeganCallTypeDateTime] [dbo].[DBDATETIME] NULL,
	[TargetType] [dbo].[DBINT] NULL,
	[MRDomainID] [dbo].[DBINT] NULL,
	[RequeryResult] [dbo].[DBINT] NULL,
	[VruProgress] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[ECCPayloadID] [dbo].[DBINT] NULL,
	[ContactShareRuleID] [dbo].[DBINT] NULL,
	[ContactShareQueueID] [dbo].[DBINT] NULL,
	[ContactShareGroupID] [dbo].[DBINT] NULL,
	[ApplicationGatewayID] [dbo].[DBINT] NULL,
	[ContactShareErrorCode] [dbo].[DBINT] NULL,
	[ContactShareResult] [dbo].[DBFLT4] NULL,
 CONSTRAINT [XPKRoute_Call_Detail] PRIMARY KEY NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Route_Call_Variable]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Route_Call_Variable](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RCDRecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ExpandedCallVariableID] [dbo].[DBSMALLINT] NOT NULL,
	[ArrayIndex] [dbo].[DBINT] NOT NULL,
	[ECCValue] [varchar](255) NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKRoute_Call_Variable] PRIMARY KEY NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Route_Call_Variable] UNIQUE CLUSTERED 
(
	[RCDRecoveryKey] ASC,
	[ExpandedCallVariableID] ASC,
	[ArrayIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Route_Five_Minute]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Route_Five_Minute](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RouteID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[CallsOfferedToday] [dbo].[DBINT] NULL,
	[CallsIncomingToday] [dbo].[DBINT] NULL,
	[CallsHandledToday] [dbo].[DBINT] NULL,
	[CallsRoutedToday] [dbo].[DBINT] NULL,
	[CallsAbandQToday] [dbo].[DBINT] NULL,
	[ServiceLevelToday] [dbo].[DBFLT4] NULL,
	[ServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsTo5] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToday] [dbo].[DBINT] NULL,
	[ServiceLevelAbandTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsQHeld] [dbo].[DBINT] NULL,
	[LongestCallQ] [dbo].[DBINT] NULL,
	[AvgDelayQAbandTo5] [dbo].[DBINT] NULL,
	[Unused1] [dbo].[DBFLT4] NULL,
	[AvgSpeedAnswerTo5] [dbo].[DBINT] NULL,
	[CallsOfferedTo5] [dbo].[DBINT] NULL,
	[AvgTalkTimeTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[AvgHandleTimeTo5] [dbo].[DBINT] NULL,
	[AvgDelayQNow] [dbo].[DBINT] NULL,
	[CallsQNow] [dbo].[DBINT] NULL,
	[AgentsTalking] [dbo].[DBINT] NULL,
	[CallsLeftQTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredToday] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
 CONSTRAINT [XPKRoute_Five_Minute] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[RouteID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Route_Five_Minute] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Route_Half_Hour]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Route_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RouteID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[CallsIncomingToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToHalf] [dbo].[DBINT] NULL,
	[CallsAbandQToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQToHalf] [dbo].[DBINT] NULL,
	[DelayQTimeToHalf] [dbo].[DBINT] NULL,
	[CallsQToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQAbandToHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeToHalf] [dbo].[DBINT] NULL,
	[AvgSpeedAnswerToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvgTalkTimeToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[AvgHandleTimeToHalf] [dbo].[DBINT] NULL,
	[HandleTimeToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[LongestCallAbandTime] [dbo].[DBINT] NULL,
	[LongestCallDelayQTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[ShortCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ForcedClosedCallsToHalf] [dbo].[DBINT] NULL,
	[OverflowInToHalf] [dbo].[DBINT] NULL,
	[OverflowOutToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[BlindTransfersOutToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
 CONSTRAINT [XPKRoute_Half_Hour] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[RouteID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Route_Half_Hour] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Route_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Route_Real_Time](
	[RouteID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[AgentsTalking] [dbo].[DBINT] NULL,
	[AnswerWaitTimeHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeTo5] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToday] [dbo].[DBINT] NULL,
	[AvgDelayQAbandTo5] [dbo].[DBINT] NULL,
	[AvgDelayQNow] [dbo].[DBINT] NULL,
	[AvgHandleTimeTo5] [dbo].[DBINT] NULL,
	[AvgSpeedAnswerTo5] [dbo].[DBINT] NULL,
	[AvgTalkTimeTo5] [dbo].[DBINT] NULL,
	[CallsAbandQHalf] [dbo].[DBINT] NULL,
	[CallsAbandQTo5] [dbo].[DBINT] NULL,
	[CallsAbandQToday] [dbo].[DBINT] NULL,
	[CallsAnsweredHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredToday] [dbo].[DBINT] NULL,
	[CallsHandledHalf] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[CallsHandledToday] [dbo].[DBINT] NULL,
	[CallsIncomingHalf] [dbo].[DBINT] NULL,
	[CallsIncomingToday] [dbo].[DBINT] NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[CallsLeftQTo5] [dbo].[DBINT] NULL,
	[CallsOfferedHalf] [dbo].[DBINT] NULL,
	[CallsOfferedTo5] [dbo].[DBINT] NULL,
	[CallsOfferedToday] [dbo].[DBINT] NULL,
	[CallsQNow] [dbo].[DBINT] NULL,
	[CallsQNowTime] [dbo].[DBINT] NULL,
	[CallsRoutedHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToday] [dbo].[DBINT] NULL,
	[DelayQAbandTimeTo5] [dbo].[DBINT] NULL,
	[HandleTimeHalf] [dbo].[DBINT] NULL,
	[HandleTimeTo5] [dbo].[DBINT] NULL,
	[HandleTimeToday] [dbo].[DBINT] NULL,
	[LongestCallQ] [dbo].[DBDATETIME] NULL,
	[OverflowInNow] [dbo].[DBINT] NULL,
	[OverflowOutNow] [dbo].[DBINT] NULL,
	[ServiceLevelAbandHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandTo5] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsQHeld] [dbo].[DBINT] NULL,
	[ServiceLevelCallsTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsToday] [dbo].[DBINT] NULL,
	[ServiceLevelHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelToday] [dbo].[DBFLT4] NULL,
	[TalkTimeHalf] [dbo].[DBINT] NULL,
	[TalkTimeTo5] [dbo].[DBINT] NULL,
	[TalkTimeToday] [dbo].[DBINT] NULL,
	[HoldTimeTo5] [dbo].[DBINT] NULL,
	[HoldTimeHalf] [dbo].[DBINT] NULL,
	[HoldTimeToday] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTo5] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsToday] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKRoute_Real_Time] PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Router_Queue_Interval]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Router_Queue_Interval](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[QueueCalls] [dbo].[DBINT] NULL,
	[CallsAbandQ] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[CallsAbandToAgent] [dbo].[DBINT] NULL,
	[CallsDequeued] [dbo].[DBINT] NULL,
	[RouterError] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[ServiceLevelCallsAband] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeue] [dbo].[DBINT] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[AbandInterval1] [dbo].[DBINT] NULL,
	[AbandInterval2] [dbo].[DBINT] NULL,
	[AbandInterval3] [dbo].[DBINT] NULL,
	[AbandInterval4] [dbo].[DBINT] NULL,
	[AbandInterval5] [dbo].[DBINT] NULL,
	[AbandInterval6] [dbo].[DBINT] NULL,
	[AbandInterval7] [dbo].[DBINT] NULL,
	[AbandInterval8] [dbo].[DBINT] NULL,
	[AbandInterval9] [dbo].[DBINT] NULL,
	[AbandInterval10] [dbo].[DBINT] NULL,
	[AnsInterval1] [dbo].[DBINT] NULL,
	[AnsInterval2] [dbo].[DBINT] NULL,
	[AnsInterval3] [dbo].[DBINT] NULL,
	[AnsInterval4] [dbo].[DBINT] NULL,
	[AnsInterval5] [dbo].[DBINT] NULL,
	[AnsInterval6] [dbo].[DBINT] NULL,
	[AnsInterval7] [dbo].[DBINT] NULL,
	[AnsInterval8] [dbo].[DBINT] NULL,
	[AnsInterval9] [dbo].[DBINT] NULL,
	[AnsInterval10] [dbo].[DBINT] NULL,
	[MaxCallsQueued] [dbo].[DBINT] NULL,
	[MaxCallWaitTime] [dbo].[DBINT] NULL,
	[CallsAbandDequeued] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[AttributeID1] [dbo].[DBINT] NULL,
	[AttributeID2] [dbo].[DBINT] NULL,
	[AttributeID3] [dbo].[DBINT] NULL,
	[AttributeID4] [dbo].[DBINT] NULL,
	[AttributeID5] [dbo].[DBINT] NULL,
	[AttributeID6] [dbo].[DBINT] NULL,
	[AttributeID7] [dbo].[DBINT] NULL,
	[AttributeID8] [dbo].[DBINT] NULL,
	[AttributeID9] [dbo].[DBINT] NULL,
	[AttributeID10] [dbo].[DBINT] NULL,
	[AnsStep1] [dbo].[DBINT] NULL,
	[AnsStep2] [dbo].[DBINT] NULL,
	[AnsStep3] [dbo].[DBINT] NULL,
	[AnsStep4] [dbo].[DBINT] NULL,
	[AnsStep5] [dbo].[DBINT] NULL,
	[AnsStep6] [dbo].[DBINT] NULL,
	[AnsStep7] [dbo].[DBINT] NULL,
	[AnsStep8] [dbo].[DBINT] NULL,
	[AnsStep9] [dbo].[DBINT] NULL,
	[AnsStep10] [dbo].[DBINT] NULL,
	[OfferedStep1] [dbo].[DBINT] NULL,
	[OfferedStep2] [dbo].[DBINT] NULL,
	[OfferedStep3] [dbo].[DBINT] NULL,
	[OfferedStep4] [dbo].[DBINT] NULL,
	[OfferedStep5] [dbo].[DBINT] NULL,
	[OfferedStep6] [dbo].[DBINT] NULL,
	[OfferedStep7] [dbo].[DBINT] NULL,
	[OfferedStep8] [dbo].[DBINT] NULL,
	[OfferedStep9] [dbo].[DBINT] NULL,
	[OfferedStep10] [dbo].[DBINT] NULL,
	[AbandStep1] [dbo].[DBINT] NULL,
	[AbandStep2] [dbo].[DBINT] NULL,
	[AbandStep3] [dbo].[DBINT] NULL,
	[AbandStep4] [dbo].[DBINT] NULL,
	[AbandStep5] [dbo].[DBINT] NULL,
	[AbandStep6] [dbo].[DBINT] NULL,
	[AbandStep7] [dbo].[DBINT] NULL,
	[AbandStep8] [dbo].[DBINT] NULL,
	[AbandStep9] [dbo].[DBINT] NULL,
	[AbandStep10] [dbo].[DBINT] NULL,
	[SkipStep1] [dbo].[DBINT] NULL,
	[SkipStep2] [dbo].[DBINT] NULL,
	[SkipStep3] [dbo].[DBINT] NULL,
	[SkipStep4] [dbo].[DBINT] NULL,
	[SkipStep5] [dbo].[DBINT] NULL,
	[SkipStep6] [dbo].[DBINT] NULL,
	[SkipStep7] [dbo].[DBINT] NULL,
	[SkipStep8] [dbo].[DBINT] NULL,
	[SkipStep9] [dbo].[DBINT] NULL,
	[SkipStep10] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[RoutedToAgent] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKRouter_Queue_Interval] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[PrecisionQueueID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Router_Queue_Interval] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Routing_Client]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Routing_Client](
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[LogicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[ClientType] [dbo].[DBSMALLINT] NOT NULL,
	[TimeoutThreshold] [dbo].[DBSMALLINT] NOT NULL,
	[TimeoutLimit] [dbo].[DBSMALLINT] NOT NULL,
	[LateThreshold] [dbo].[DBSMALLINT] NOT NULL,
	[ConfigParam] [varchar](255) NULL,
	[DialedNumberLabelMapPresent] [dbo].[DBSMALLINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[NetworkRoutingClient] [dbo].[VNAME32] NULL,
	[NetworkTransferPreferred] [dbo].[DBCHAR] NOT NULL,
	[DefaultMRDomainID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DefaultLabel] [dbo].[VNAME32] NULL,
	[CongestionTreatmentMode] [dbo].[DBINT] NULL,
	[RoutingType] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKRouting_Client] PRIMARY KEY CLUSTERED 
(
	[RoutingClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Routing_Client] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Routing_Client_Five_Minute]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Routing_Client_Five_Minute](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[PhysicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[ResponsesTo5] [dbo].[DBINT] NOT NULL,
	[MeanResponseTo5] [dbo].[DBINT] NOT NULL,
	[RcvInErrorTo5] [dbo].[DBINT] NOT NULL,
	[TimeoutCallsTo5] [dbo].[DBINT] NOT NULL,
	[MaxDelay] [dbo].[DBINT] NOT NULL,
	[LateCallsTo5] [dbo].[DBINT] NOT NULL,
	[DiscardedCallsTo5] [dbo].[DBINT] NOT NULL,
	[CircularRouteResponsesTo5] [dbo].[DBINT] NOT NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[TranslationRouteAbortedTo5] [dbo].[DBINT] NULL,
	[TranslationRouteTimedOutTo5] [dbo].[DBINT] NULL,
	[NewCallTo5] [dbo].[DBINT] NULL,
	[ReqInstrTo5] [dbo].[DBINT] NULL,
	[ConnectTo5] [dbo].[DBINT] NULL,
	[CallGapTo5] [dbo].[DBINT] NULL,
	[ActivityTestTo5] [dbo].[DBINT] NULL,
	[CallEventReportTo5] [dbo].[DBINT] NULL,
	[ReRouteReqTo5] [dbo].[DBINT] NULL,
	[RunScriptTo5] [dbo].[DBINT] NULL,
	[ScriptRespTo5] [dbo].[DBINT] NULL,
	[DialogFailTo5] [dbo].[DBINT] NULL,
	[DialogErrorConfTo5] [dbo].[DBINT] NULL,
	[DestinationTo5] [dbo].[DBINT] NULL,
	[AnnouncementTo5] [dbo].[DBINT] NULL,
	[PeripheralQueueTo5] [dbo].[DBINT] NULL,
	[CallRouterQueueTo5] [dbo].[DBINT] NULL,
	[NetworkBusyTo5] [dbo].[DBINT] NULL,
	[NetworkRingTo5] [dbo].[DBINT] NULL,
	[NetworkPostQueryTo5] [dbo].[DBINT] NULL,
	[NetworkDefaultTo5] [dbo].[DBINT] NULL,
	[NetworkResourceTo5] [dbo].[DBINT] NULL,
	[RouteSelectFailureTo5] [dbo].[DBINT] NULL,
	[CalledPartyBusyTo5] [dbo].[DBINT] NULL,
	[NoAnswerTo5] [dbo].[DBINT] NULL,
	[AnswerTo5] [dbo].[DBINT] NULL,
	[AbandonTo5] [dbo].[DBINT] NULL,
	[DisconnectTo5] [dbo].[DBINT] NULL,
	[Histogram0] [dbo].[DBINT] NULL,
	[Histogram1] [dbo].[DBINT] NULL,
	[Histogram2] [dbo].[DBINT] NULL,
	[Histogram3] [dbo].[DBINT] NULL,
	[Histogram4] [dbo].[DBINT] NULL,
	[Histogram5] [dbo].[DBINT] NULL,
	[Histogram6] [dbo].[DBINT] NULL,
	[Histogram7] [dbo].[DBINT] NULL,
	[Histogram8] [dbo].[DBINT] NULL,
	[Histogram9] [dbo].[DBINT] NULL,
	[Histogram10] [dbo].[DBINT] NULL,
	[Histogram11] [dbo].[DBINT] NULL,
	[Histogram12] [dbo].[DBINT] NULL,
	[Histogram13] [dbo].[DBINT] NULL,
	[Histogram14] [dbo].[DBINT] NULL,
	[Histogram15] [dbo].[DBINT] NULL,
	[Histogram16] [dbo].[DBINT] NULL,
	[Histogram17] [dbo].[DBINT] NULL,
	[Histogram18] [dbo].[DBINT] NULL,
	[Histogram19] [dbo].[DBINT] NULL,
	[NumCancelInd] [dbo].[DBINT] NULL,
	[NumReleaseInd] [dbo].[DBINT] NULL,
	[NumBlindTransferConfTo5] [dbo].[DBINT] NULL,
	[NumTransferEventTo5] [dbo].[DBINT] NULL,
	[NumCallFailedEventTo5] [dbo].[DBINT] NULL,
	[NumConsultConfTo5] [dbo].[DBINT] NULL,
	[NumCallHeldEventTo5] [dbo].[DBINT] NULL,
	[NumCallOriginatedEventTo5] [dbo].[DBINT] NULL,
	[NumCallEstablishedEventTo5] [dbo].[DBINT] NULL,
	[NumRetrievedEventTo5] [dbo].[DBINT] NULL,
	[NumConnectionClearedEventTo5] [dbo].[DBINT] NULL,
	[NumConferencedEventTo5] [dbo].[DBINT] NULL,
	[NumAlternateCallReqTo5] [dbo].[DBINT] NULL,
	[NumAlternateCallConfTo5] [dbo].[DBINT] NULL,
	[NumReconnectCallReqTo5] [dbo].[DBINT] NULL,
	[NumReconnectCallConfTo5] [dbo].[DBINT] NULL,
	[NumConsultTransferReqTo5] [dbo].[DBINT] NULL,
	[NumConsultTransferConfTo5] [dbo].[DBINT] NULL,
	[NumConferenceCallReqTo5] [dbo].[DBINT] NULL,
	[NumConferenceCallConfTo5] [dbo].[DBINT] NULL,
	[NumDropConnectionReqTo5] [dbo].[DBINT] NULL,
	[NumDropConnectionConfTo5] [dbo].[DBINT] NULL,
	[RejectedRequestsTo5] [dbo].[DBINT] NULL,
	[HighestCongestionLevelTo5] [dbo].[DBINT] NULL,
	[CongestionDurationTo5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKRouting_Client_Five_Minute] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[RoutingClientID] ASC,
	[PhysicalControllerID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Routing_Client_Five_Minute] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Schedule]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Schedule](
	[ScheduleID] [dbo].[DBINT] NOT NULL,
	[ScheduleReportID] [dbo].[DBINT] NULL,
	[ScheduleSourceID] [dbo].[DBINT] NULL,
	[ICRViewID] [dbo].[DBINT] NULL,
	[ScheduleType] [dbo].[DBINT] NOT NULL,
	[SchedulePeriod] [dbo].[DBINT] NOT NULL,
	[EntityID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKSchedule] PRIMARY KEY CLUSTERED 
(
	[ScheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Schedule] UNIQUE NONCLUSTERED 
(
	[EntityID] ASC,
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Schedule_Import]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Schedule_Import](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[ScheduleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[Long1] [dbo].[DBINT] NULL,
	[Long2] [dbo].[DBINT] NULL,
	[Long3] [dbo].[DBINT] NULL,
	[Long4] [dbo].[DBINT] NULL,
	[Long5] [dbo].[DBINT] NULL,
	[Long6] [dbo].[DBINT] NULL,
	[Long7] [dbo].[DBINT] NULL,
	[Long8] [dbo].[DBINT] NULL,
	[Long9] [dbo].[DBINT] NULL,
	[Long10] [dbo].[DBINT] NULL,
	[Long11] [dbo].[DBINT] NULL,
	[Long12] [dbo].[DBINT] NULL,
	[Long13] [dbo].[DBINT] NULL,
	[Long14] [dbo].[DBINT] NULL,
	[Long15] [dbo].[DBINT] NULL,
	[Double1] [dbo].[DBFLT8] NULL,
	[Double2] [dbo].[DBFLT8] NULL,
	[Double3] [dbo].[DBFLT8] NULL,
	[Double4] [dbo].[DBFLT8] NULL,
	[Double5] [dbo].[DBFLT8] NULL,
	[Double6] [dbo].[DBFLT8] NULL,
	[Double7] [dbo].[DBFLT8] NULL,
	[Double8] [dbo].[DBFLT8] NULL,
	[Double9] [dbo].[DBFLT8] NULL,
	[Double10] [dbo].[DBFLT8] NULL,
	[String1] [dbo].[DESCRIPTION] NULL,
	[String2] [dbo].[DESCRIPTION] NULL,
	[String3] [dbo].[DESCRIPTION] NULL,
	[String4] [dbo].[DESCRIPTION] NULL,
	[String5] [dbo].[DESCRIPTION] NULL,
	[DateTime1] [dbo].[DBDATETIME] NULL,
	[DateTime2] [dbo].[DBDATETIME] NULL,
	[DateTime3] [dbo].[DBDATETIME] NULL,
	[Bool1] [dbo].[DBCHAR] NOT NULL,
	[Bool2] [dbo].[DBCHAR] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
 CONSTRAINT [XPKSchedule_Import] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[ScheduleID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Schedule_Import] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Schedule_Import_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Schedule_Import_Real_Time](
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[ScheduleID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[Long1] [dbo].[DBINT] NULL,
	[Long2] [dbo].[DBINT] NULL,
	[Long3] [dbo].[DBINT] NULL,
	[Long4] [dbo].[DBINT] NULL,
	[Long5] [dbo].[DBINT] NULL,
	[Long6] [dbo].[DBINT] NULL,
	[Long7] [dbo].[DBINT] NULL,
	[Long8] [dbo].[DBINT] NULL,
	[Long9] [dbo].[DBINT] NULL,
	[Long10] [dbo].[DBINT] NULL,
	[Long11] [dbo].[DBINT] NULL,
	[Long12] [dbo].[DBINT] NULL,
	[Long13] [dbo].[DBINT] NULL,
	[Long14] [dbo].[DBINT] NULL,
	[Long15] [dbo].[DBINT] NULL,
	[Double1] [dbo].[DBFLT8] NULL,
	[Double2] [dbo].[DBFLT8] NULL,
	[Double3] [dbo].[DBFLT8] NULL,
	[Double4] [dbo].[DBFLT8] NULL,
	[Double5] [dbo].[DBFLT8] NULL,
	[Double6] [dbo].[DBFLT8] NULL,
	[Double7] [dbo].[DBFLT8] NULL,
	[Double8] [dbo].[DBFLT8] NULL,
	[Double9] [dbo].[DBFLT8] NULL,
	[Double10] [dbo].[DBFLT8] NULL,
	[String1] [dbo].[DESCRIPTION] NULL,
	[String2] [dbo].[DESCRIPTION] NULL,
	[String3] [dbo].[DESCRIPTION] NULL,
	[String4] [dbo].[DESCRIPTION] NULL,
	[String5] [dbo].[DESCRIPTION] NULL,
	[DateTime1] [dbo].[DBDATETIME] NULL,
	[DateTime2] [dbo].[DBDATETIME] NULL,
	[DateTime3] [dbo].[DBDATETIME] NULL,
	[Bool1] [dbo].[DBCHAR] NULL,
	[Bool2] [dbo].[DBCHAR] NULL,
 CONSTRAINT [XPKSchedule_Import_Real_Time] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[ScheduleID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Schedule_Map]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Schedule_Map](
	[ScheduleMapID] [dbo].[DBINT] NOT NULL,
	[ScheduleID] [dbo].[DBINT] NOT NULL,
	[FieldName] [dbo].[VNAME32] NOT NULL,
	[FieldValue] [dbo].[DESCRIPTION] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKSchedule_Map] PRIMARY KEY CLUSTERED 
(
	[ScheduleMapID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Schedule_Report]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Schedule_Report](
	[ScheduleReportID] [dbo].[DBINT] NOT NULL,
	[EntityID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[ReportType] [dbo].[DBINT] NOT NULL,
	[SystemName] [dbo].[VNAME32] NULL,
	[PathName] [varchar](255) NULL,
	[SystemTimeZone] [varchar](255) NULL,
	[TemplateCategory] [dbo].[VNAME32] NULL,
	[TemplateScope] [dbo].[VNAME32] NULL,
	[TemplateName] [varchar](255) NULL,
	[TemplateOptions] [varchar](255) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKSchedule_Report] PRIMARY KEY CLUSTERED 
(
	[ScheduleReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Schedule_Report] UNIQUE NONCLUSTERED 
(
	[EntityID] ASC,
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Schedule_Report_Input]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Schedule_Report_Input](
	[ScheduleReportInputID] [dbo].[DBINT] NOT NULL,
	[ScheduleReportID] [dbo].[DBINT] NOT NULL,
	[TargetType] [dbo].[DBINT] NOT NULL,
	[ForeignKey] [dbo].[DBINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKSchedule_Report_Input] PRIMARY KEY CLUSTERED 
(
	[ScheduleReportInputID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Schedule_Source]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Schedule_Source](
	[ScheduleSourceID] [dbo].[DBINT] NOT NULL,
	[EntityID] [dbo].[DBINT] NULL,
	[SystemName] [dbo].[VNAME32] NOT NULL,
	[SystemType] [dbo].[DBINT] NOT NULL,
	[SystemTimeZone] [varchar](255) NULL,
	[FilePath] [dbo].[DESCRIPTION] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[LoginName] [varchar](64) NULL,
	[SystemPassword] [varchar](32) NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKSchedule_Source] PRIMARY KEY CLUSTERED 
(
	[ScheduleSourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Scheduled_Target]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Scheduled_Target](
	[NetworkTargetID] [dbo].[DBINT] NOT NULL,
	[CustomerDefinitionID] [dbo].[DBINT] NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[ScheduleID] [dbo].[DBINT] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKScheduled_Target] PRIMARY KEY CLUSTERED 
(
	[NetworkTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Scheduled_Target] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Scheduled_Target_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Scheduled_Target_Real_Time](
	[NetworkTargetID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[MaxCallsInProgress] [dbo].[DBINT] NULL,
	[RouterCallsQNow] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKScheduled_Target_Real_Time] PRIMARY KEY CLUSTERED 
(
	[NetworkTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Script]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Script](
	[ScriptID] [dbo].[DBINT] NOT NULL,
	[MasterScriptID] [dbo].[DBINT] NOT NULL,
	[Version] [dbo].[DBINT] NOT NULL,
	[Author] [dbo].[VNAME32] NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[Valid] [dbo].[DBCHAR] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[QuickEditBaseVersion] [dbo].[DBINT] NULL,
	[Length] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKScript] PRIMARY KEY CLUSTERED 
(
	[ScriptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Script] UNIQUE NONCLUSTERED 
(
	[MasterScriptID] ASC,
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Script_Cross_Reference]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Script_Cross_Reference](
	[ScriptID] [dbo].[DBINT] NOT NULL,
	[LocalID] [dbo].[DBINT] NOT NULL,
	[TargetType] [dbo].[DBSMALLINT] NOT NULL,
	[ForeignKey] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKScript_Cross_Reference] PRIMARY KEY CLUSTERED 
(
	[ScriptID] ASC,
	[LocalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Script_Data]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Script_Data](
	[ScriptID] [dbo].[DBINT] NOT NULL,
	[RowOrder] [dbo].[DBINT] NOT NULL,
	[ScriptData] [image] NULL,
 CONSTRAINT [XPKScript_Data] PRIMARY KEY CLUSTERED 
(
	[ScriptID] ASC,
	[RowOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Script_Five_Minute]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Script_Five_Minute](
	[ScriptID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsIncomingTo5] [dbo].[DBINT] NOT NULL,
	[CallsRoutedTo5] [dbo].[DBINT] NOT NULL,
	[CallsPerNode] [varchar](255) NOT NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
 CONSTRAINT [XPKScript_Five_Minute] PRIMARY KEY CLUSTERED 
(
	[ScriptID] ASC,
	[DateTime] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Script_Five_Minute] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Script_Print_Control]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Script_Print_Control](
	[ScriptPrintControlID] [dbo].[DBINT] NOT NULL,
	[ScriptID] [dbo].[DBINT] NOT NULL,
	[PrintControlSettings] [varchar](255) NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKScript_Print_Control] PRIMARY KEY CLUSTERED 
(
	[ScriptPrintControlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Script_Print_Control] UNIQUE NONCLUSTERED 
(
	[ScriptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Script_Queue_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Script_Queue_Real_Time](
	[ScriptID] [dbo].[DBINT] NOT NULL,
	[QueueNode] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[TimeInQueue] [dbo].[DBDATETIME] NULL,
	[TasksQueued] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKScript_Queue_Real_Time] PRIMARY KEY CLUSTERED 
(
	[ScriptID] ASC,
	[QueueNode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Script_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Script_Real_Time](
	[ScriptID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[Calls] [dbo].[DBINT] NOT NULL,
	[CpuTime] [dbo].[DBINT] NOT NULL,
	[ElapsedTime] [dbo].[DBINT] NOT NULL,
	[ScriptMeters] [image] NULL,
 CONSTRAINT [XPKScript_Real_Time] PRIMARY KEY CLUSTERED 
(
	[ScriptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Script_Table]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Script_Table](
	[ScriptTableID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[AccessType] [dbo].[DBSMALLINT] NOT NULL,
	[SideA] [dbo].[DESCRIPTION] NULL,
	[SideB] [dbo].[DESCRIPTION] NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKScript_Table] PRIMARY KEY CLUSTERED 
(
	[ScriptTableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Script_Table] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Script_Table_Column]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Script_Table_Column](
	[ScriptTableColumnID] [dbo].[DBINT] NOT NULL,
	[ScriptTableID] [dbo].[DBINT] NOT NULL,
	[ColumnName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKScript_Table_Column] PRIMARY KEY CLUSTERED 
(
	[ScriptTableColumnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Script_Table_Column] UNIQUE NONCLUSTERED 
(
	[ScriptTableID] ASC,
	[ColumnName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Service]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Service](
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[ScheduleID] [dbo].[DBINT] NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[PeripheralNumber] [dbo].[DBINT] NOT NULL,
	[PeripheralName] [dbo].[VNAME32] NOT NULL,
	[PeripheralServiceLevelType] [dbo].[DBSMALLINT] NOT NULL,
	[ServiceLevelType] [dbo].[DBSMALLINT] NOT NULL,
	[ServiceLevelThreshold] [dbo].[DBINT] NOT NULL,
	[Extension] [dbo].[VTELNO10] NULL,
	[ConfigParam] [varchar](255) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[UserDeletable] [dbo].[DBCHAR] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKService] PRIMARY KEY CLUSTERED 
(
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Service] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK2Service] UNIQUE NONCLUSTERED 
(
	[PeripheralID] ASC,
	[PeripheralNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Service_Array]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Service_Array](
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[ScheduleID] [dbo].[DBINT] NULL,
	[LogicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKService_Array] PRIMARY KEY CLUSTERED 
(
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Service_Array] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Service_Array_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Service_Array_Member](
	[ServiceArraySkillTargetID] [dbo].[DBINT] NOT NULL,
	[ServiceSkillTargetID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKService_Array_Member] PRIMARY KEY CLUSTERED 
(
	[ServiceArraySkillTargetID] ASC,
	[ServiceSkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Service_Five_Minute]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Service_Five_Minute](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[CallsOfferedToday] [dbo].[DBINT] NULL,
	[CallsIncomingToday] [dbo].[DBINT] NULL,
	[CallsHandledToday] [dbo].[DBINT] NULL,
	[CallsRoutedToday] [dbo].[DBINT] NULL,
	[CallsAbandQToday] [dbo].[DBINT] NULL,
	[PeriphServiceLevelToday] [dbo].[DBFLT4] NULL,
	[PeriphServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelToday] [dbo].[DBFLT4] NULL,
	[ServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsTo5] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToday] [dbo].[DBINT] NULL,
	[ServiceLevelAbandTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsQHeld] [dbo].[DBINT] NULL,
	[LongestCallQ] [dbo].[DBINT] NULL,
	[AvgDelayQAbandTo5] [dbo].[DBINT] NULL,
	[ExpectedDelay] [dbo].[DBFLT4] NULL,
	[AvgSpeedAnswerTo5] [dbo].[DBINT] NULL,
	[CallsOfferedTo5] [dbo].[DBINT] NULL,
	[AvgTalkTimeTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[AvgHandleTimeTo5] [dbo].[DBINT] NULL,
	[AvgDelayQNow] [dbo].[DBINT] NULL,
	[CallsQNow] [dbo].[DBINT] NULL,
	[Unused1] [dbo].[DBINT] NULL,
	[AgentsTalking] [dbo].[DBINT] NULL,
	[CallsLeftQTo5] [dbo].[DBINT] NULL,
	[OverflowInTo5] [dbo].[DBINT] NULL,
	[OverflowOutTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredToday] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[LongestAvailAgent] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
 CONSTRAINT [XPKService_Five_Minute] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Service_Five_Minute] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Service_Half_Hour]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Service_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsOutToHalf] [dbo].[DBINT] NULL,
	[CallsTerminatedOtherToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[PeriphServiceLevelOfferToHalf] [dbo].[DBINT] NULL,
	[CallsIncomingToHalf] [dbo].[DBINT] NULL,
	[TransferInCallsToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[TransferOutCallsToHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToHalf] [dbo].[DBINT] NULL,
	[CallsAbandQToHalf] [dbo].[DBINT] NULL,
	[PeriphServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[PeriphServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQToHalf] [dbo].[DBINT] NULL,
	[DelayQTimeToHalf] [dbo].[DBINT] NULL,
	[CallsQToHalf] [dbo].[DBINT] NULL,
	[AvgDelayQAbandToHalf] [dbo].[DBINT] NULL,
	[DelayQAbandTimeToHalf] [dbo].[DBINT] NULL,
	[AvgSpeedAnswerToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AvgTalkTimeToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[AvgHandleTimeToHalf] [dbo].[DBINT] NULL,
	[HandleTimeToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[LongestCallAbandTime] [dbo].[DBINT] NULL,
	[LongestCallDelayQTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ShortCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ForcedClosedCallsToHalf] [dbo].[DBINT] NULL,
	[OverflowInToHalf] [dbo].[DBINT] NULL,
	[OverflowOutToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[BlindTransfersOutToHalf] [dbo].[DBINT] NULL,
	[NumMissingTasks] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
 CONSTRAINT [XPKService_Half_Hour] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Service_Half_Hour] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Service_Interval]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Service_Interval](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsOut] [dbo].[DBINT] NULL,
	[CallsTerminatedOther] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[PeriphServiceLevelOffer] [dbo].[DBINT] NULL,
	[CallsIncoming] [dbo].[DBINT] NULL,
	[TransferInCalls] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[TransferOutCalls] [dbo].[DBINT] NULL,
	[CallsRouted] [dbo].[DBINT] NULL,
	[CallsAbandQ] [dbo].[DBINT] NULL,
	[PeriphServiceLevel] [dbo].[DBFLT4] NULL,
	[PeriphServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelAband] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[AvgDelayQ] [dbo].[DBINT] NULL,
	[DelayQTime] [dbo].[DBINT] NULL,
	[CallsQ] [dbo].[DBINT] NULL,
	[AvgDelayQAband] [dbo].[DBINT] NULL,
	[DelayQAbandTime] [dbo].[DBINT] NULL,
	[AvgSpeedAnswer] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AvgTalkTime] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[AvgHandleTime] [dbo].[DBINT] NULL,
	[HandleTime] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[LongestCallAbandTime] [dbo].[DBINT] NULL,
	[LongestCallDelayQTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ShortCallsTime] [dbo].[DBINT] NULL,
	[ForcedClosedCalls] [dbo].[DBINT] NULL,
	[OverflowIn] [dbo].[DBINT] NULL,
	[OverflowOut] [dbo].[DBINT] NULL,
	[AutoOutCalls] [dbo].[DBINT] NULL,
	[AutoOutCallsTime] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHold] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[PreviewCalls] [dbo].[DBINT] NULL,
	[PreviewCallsTime] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTime] [dbo].[DBINT] NULL,
	[PreviewCallsOnHold] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTime] [dbo].[DBINT] NULL,
	[ReserveCalls] [dbo].[DBINT] NULL,
	[ReserveCallsTime] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTime] [dbo].[DBINT] NULL,
	[ReserveCallsOnHold] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[BlindTransfersOut] [dbo].[DBINT] NULL,
	[NumMissingTasks] [dbo].[DBINT] NULL,
	[ServiceLevelType] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RedirectNoAnsCalls] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKService_Interval] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Service_Interval] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Service_Level_Threshold]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Service_Level_Threshold](
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[ServiceLevelThreshold] [dbo].[DBINT] NOT NULL,
	[ServiceLevelType] [dbo].[DBSMALLINT] NOT NULL,
 CONSTRAINT [XPKService_Level_Threshold] PRIMARY KEY CLUSTERED 
(
	[PeripheralID] ASC,
	[MRDomainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Service_Member]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Service_Member](
	[ServiceSkillTargetID] [dbo].[DBINT] NOT NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[Priority] [dbo].[DBSMALLINT] NOT NULL,
 CONSTRAINT [XPKService_Member] PRIMARY KEY CLUSTERED 
(
	[ServiceSkillTargetID] ASC,
	[SkillGroupSkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Service_Real_Time]    Script Date: 05-07-2018 13:37:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Service_Real_Time](
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[AgentsTalking] [dbo].[DBINT] NULL,
	[AnswerWaitTimeHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeTo5] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToday] [dbo].[DBINT] NULL,
	[AvgDelayQAbandTo5] [dbo].[DBINT] NULL,
	[AvgDelayQNow] [dbo].[DBINT] NULL,
	[AvgHandleTimeTo5] [dbo].[DBINT] NULL,
	[AvgSpeedAnswerTo5] [dbo].[DBINT] NULL,
	[AvgTalkTimeTo5] [dbo].[DBINT] NULL,
	[CallsAbandQHalf] [dbo].[DBINT] NULL,
	[CallsAbandQTo5] [dbo].[DBINT] NULL,
	[CallsAbandQToday] [dbo].[DBINT] NULL,
	[CallsAnsweredHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredToday] [dbo].[DBINT] NULL,
	[CallsHandledHalf] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[CallsHandledToday] [dbo].[DBINT] NULL,
	[CallsIncomingHalf] [dbo].[DBINT] NULL,
	[CallsIncomingTo5] [dbo].[DBINT] NULL,
	[CallsIncomingToday] [dbo].[DBINT] NULL,
	[CallsInNow] [dbo].[DBINT] NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[CallsLeftQTo5] [dbo].[DBINT] NULL,
	[CallsOfferedHalf] [dbo].[DBINT] NULL,
	[CallsOfferedTo5] [dbo].[DBINT] NULL,
	[CallsOfferedToday] [dbo].[DBINT] NULL,
	[CallsOutHalf] [dbo].[DBINT] NULL,
	[CallsOutNow] [dbo].[DBINT] NULL,
	[CallsOutTo5] [dbo].[DBINT] NULL,
	[CallsOutToday] [dbo].[DBINT] NULL,
	[CallsQNow] [dbo].[DBINT] NULL,
	[CallsQNowTime] [dbo].[DBINT] NULL,
	[CallsRoutedHalf] [dbo].[DBINT] NULL,
	[CallsRoutedToday] [dbo].[DBINT] NULL,
	[CallsTerminatedOtherHalf] [dbo].[DBINT] NULL,
	[CallsTerminatedOtherTo5] [dbo].[DBINT] NULL,
	[CallsTerminatedOtherToday] [dbo].[DBINT] NULL,
	[DelayQAbandTimeTo5] [dbo].[DBINT] NULL,
	[ExpectedDelay] [dbo].[DBFLT4] NULL,
	[HandleTimeHalf] [dbo].[DBINT] NULL,
	[HandleTimeTo5] [dbo].[DBINT] NULL,
	[HandleTimeToday] [dbo].[DBINT] NULL,
	[LongestAvailAgent] [dbo].[DBDATETIME] NULL,
	[LongestCallQ] [dbo].[DBDATETIME] NULL,
	[OverflowInHalf] [dbo].[DBINT] NULL,
	[OverflowInTo5] [dbo].[DBINT] NULL,
	[OverflowInMode] [dbo].[DBTINYINT] NULL,
	[OverflowInNow] [dbo].[DBINT] NULL,
	[OverflowInToday] [dbo].[DBINT] NULL,
	[OverflowOutHalf] [dbo].[DBINT] NULL,
	[OverflowOutMode] [dbo].[DBTINYINT] NULL,
	[OverflowOutNow] [dbo].[DBINT] NULL,
	[OverflowOutTo5] [dbo].[DBINT] NULL,
	[OverflowOutToday] [dbo].[DBINT] NULL,
	[PeriphServiceLevelCallsHalf] [dbo].[DBINT] NULL,
	[PeriphServiceLevelCallsToday] [dbo].[DBINT] NULL,
	[PeriphServiceLevelHalf] [dbo].[DBFLT4] NULL,
	[PeriphServiceLevelOfferHalf] [dbo].[DBINT] NULL,
	[PeriphServiceLevelOfferToday] [dbo].[DBINT] NULL,
	[PeriphServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[PeriphServiceLevelToday] [dbo].[DBFLT4] NULL,
	[ServiceLevelAbandHalf] [dbo].[DBINT] NULL,
	[ServiceLevelAbandTo5] [dbo].[DBINT] NULL,
	[ServiceLevelAbandToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToday] [dbo].[DBINT] NULL,
	[ServiceLevelCallsQHeld] [dbo].[DBINT] NULL,
	[ServiceLevelCallsTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsToday] [dbo].[DBINT] NULL,
	[ServiceLevelHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelToday] [dbo].[DBFLT4] NULL,
	[ServiceModeIndicator] [dbo].[DBINT] NULL,
	[TalkTimeHalf] [dbo].[DBINT] NULL,
	[TalkTimeTo5] [dbo].[DBINT] NULL,
	[TalkTimeToday] [dbo].[DBINT] NULL,
	[TransferInCallsHalf] [dbo].[DBINT] NULL,
	[TransferInCallsTo5] [dbo].[DBINT] NULL,
	[TransferInCallsToday] [dbo].[DBINT] NULL,
	[TransferOutCallsHalf] [dbo].[DBINT] NULL,
	[TransferOutCallsTo5] [dbo].[DBINT] NULL,
	[TransferOutCallsToday] [dbo].[DBINT] NULL,
	[AutoOutCallsNow] [dbo].[DBINT] NULL,
	[AutoOutCallsTo5] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeTo5] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTo5] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeTo5] [dbo].[DBINT] NULL,
	[AutoOutCallsToday] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeToday] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeToday] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldToday] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeToday] [dbo].[DBINT] NULL,
	[AutoOutCallsHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeHalf] [dbo].[DBINT] NULL,
	[PreviewCallsNow] [dbo].[DBINT] NULL,
	[PreviewCallsTo5] [dbo].[DBINT] NULL,
	[PreviewCallsTimeTo5] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTo5] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeTo5] [dbo].[DBINT] NULL,
	[PreviewCallsToday] [dbo].[DBINT] NULL,
	[PreviewCallsTimeToday] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeToday] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldToday] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeToday] [dbo].[DBINT] NULL,
	[PreviewCallsHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTimeHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeHalf] [dbo].[DBINT] NULL,
	[ReserveCallsNow] [dbo].[DBINT] NULL,
	[ReserveCallsTo5] [dbo].[DBINT] NULL,
	[ReserveCallsTimeTo5] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTo5] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeTo5] [dbo].[DBINT] NULL,
	[ReserveCallsToday] [dbo].[DBINT] NULL,
	[ReserveCallsTimeToday] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeToday] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldToday] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeToday] [dbo].[DBINT] NULL,
	[ReserveCallsHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTimeHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeHalf] [dbo].[DBINT] NULL,
	[HoldTimeTo5] [dbo].[DBINT] NULL,
	[HoldTimeHalf] [dbo].[DBINT] NULL,
	[HoldTimeToday] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTo5] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsToday] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKService_Real_Time] PRIMARY KEY CLUSTERED 
(
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Skill_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Skill_Group](
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[PrecisionQueueID] [dbo].[DBINT] NULL,
	[ScheduleID] [dbo].[DBINT] NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[PeripheralNumber] [dbo].[DBINT] NOT NULL,
	[PeripheralName] [dbo].[VNAME32] NOT NULL,
	[AvailableHoldoffDelay] [dbo].[DBSMALLINT] NOT NULL,
	[Priority] [dbo].[DBSMALLINT] NOT NULL,
	[BaseSkillTargetID] [dbo].[DBINT] NULL,
	[Extension] [dbo].[VTELNO10] NULL,
	[SubGroupMaskType] [dbo].[DBSMALLINT] NOT NULL,
	[SubSkillGroupMask] [varchar](64) NULL,
	[ConfigParam] [varchar](255) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NOT NULL,
	[IPTA] [dbo].[DBCHAR] NOT NULL,
	[DefaultEntry] [dbo].[DBINT] NOT NULL,
	[UserDeletable] [dbo].[DBCHAR] NOT NULL,
	[ServiceLevelThreshold] [dbo].[DBINT] NOT NULL,
	[ServiceLevelType] [dbo].[DBSMALLINT] NOT NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKSkill_Group] PRIMARY KEY CLUSTERED 
(
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Skill_Group] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK2Skill_Group] UNIQUE NONCLUSTERED 
(
	[PeripheralID] ASC,
	[PeripheralNumber] ASC,
	[Priority] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Skill_Group_Five_Minute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Skill_Group_Five_Minute](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[LoggedOn] [dbo].[DBINT] NULL,
	[Avail] [dbo].[DBINT] NULL,
	[Ready] [dbo].[DBINT] NULL,
	[NotReady] [dbo].[DBINT] NULL,
	[TalkingIn] [dbo].[DBINT] NULL,
	[TalkingOut] [dbo].[DBINT] NULL,
	[TalkingOther] [dbo].[DBINT] NULL,
	[WorkReady] [dbo].[DBINT] NULL,
	[WorkNotReady] [dbo].[DBINT] NULL,
	[AvgHandledCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[AvgHandledCallsTimeTo5] [dbo].[DBINT] NULL,
	[PercentUtilizationTo5] [dbo].[DBFLT4] NULL,
	[Unused1] [dbo].[DBINT] NULL,
	[AvailTimeTo5] [dbo].[DBINT] NULL,
	[NotReadyTimeTo5] [dbo].[DBINT] NULL,
	[TalkTimeTo5] [dbo].[DBINT] NULL,
	[WorkReadyTimeTo5] [dbo].[DBINT] NULL,
	[WorkNotReadyTimeTo5] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[BusyOther] [dbo].[DBINT] NULL,
	[BusyOtherTimeTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[ReservedStateTimeTo5] [dbo].[DBINT] NULL,
	[LongestAvailAgent] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKSkill_Group_Five_Minute] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Skill_Group_Five_Minute] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Skill_Group_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Skill_Group_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallbackMessagesToHalf] [dbo].[DBINT] NULL,
	[CallbackMessagesTimeToHalf] [dbo].[DBINT] NULL,
	[AvgHandledCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[HoldTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsToHalf] [dbo].[DBINT] NULL,
	[InternalCallsTimeToHalf] [dbo].[DBINT] NULL,
	[CallsHandledToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsToHalf] [dbo].[DBINT] NULL,
	[AvgHandledCallsTimeToHalf] [dbo].[DBINT] NULL,
	[SupervAssistCallsTimeToHalf] [dbo].[DBINT] NULL,
	[HandledCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PercentUtilizationToHalf] [dbo].[DBFLT4] NULL,
	[AgentOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[TalkInTimeToHalf] [dbo].[DBINT] NULL,
	[LoggedOnTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsToHalf] [dbo].[DBINT] NULL,
	[TalkOutTimeToHalf] [dbo].[DBINT] NULL,
	[TalkOtherTimeToHalf] [dbo].[DBINT] NULL,
	[AvailTimeToHalf] [dbo].[DBINT] NULL,
	[NotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[TransferInCallsToHalf] [dbo].[DBINT] NULL,
	[TalkTimeToHalf] [dbo].[DBINT] NULL,
	[TransferInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[WorkReadyTimeToHalf] [dbo].[DBINT] NULL,
	[TransferOutCallsToHalf] [dbo].[DBINT] NULL,
	[WorkNotReadyTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[BusyOtherTimeToHalf] [dbo].[DBINT] NULL,
	[CallsAnsweredToHalf] [dbo].[DBINT] NULL,
	[ReservedStateTimeToHalf] [dbo].[DBINT] NULL,
	[AnswerWaitTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonRingCallsToHalf] [dbo].[DBINT] NULL,
	[AbandonRingTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldCallsToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[AgentTerminatedCallsToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[ConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedInCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTimeToHalf] [dbo].[DBINT] NULL,
	[InternalCallsRcvdToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsToHalf] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ShortCallsToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandQToHalf] [dbo].[DBINT] NULL,
	[RouterQueueCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldToHalf] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTimeToHalf] [dbo].[DBINT] NULL,
	[TalkAutoOutTimeToHalf] [dbo].[DBINT] NULL,
	[TalkPreviewTimeToHalf] [dbo].[DBINT] NULL,
	[TalkReserveTimeToHalf] [dbo].[DBINT] NULL,
	[BargeInCallsToHalf] [dbo].[DBINT] NULL,
	[InterceptCallsToHalf] [dbo].[DBINT] NULL,
	[MonitorCallsToHalf] [dbo].[DBINT] NULL,
	[WhisperCallsToHalf] [dbo].[DBINT] NULL,
	[EmergencyAssistsToHalf] [dbo].[DBINT] NULL,
	[CallsOfferedToHalf] [dbo].[DBINT] NULL,
	[CallsQueuedToHalf] [dbo].[DBINT] NULL,
	[InterruptedTimeToHalf] [dbo].[DBINT] NULL,
	[AbandonHoldCallsOutToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsToHalf] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetConferencedOutCallsToHalf] [dbo].[DBINT] NULL,
	[NetConfOutCallsTimeToHalf] [dbo].[DBINT] NULL,
	[NetTransferOutCallsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgentToHalf] [dbo].[DBINT] NULL,
	[RouterCallsDequeuedToHalf] [dbo].[DBINT] NULL,
	[RouterErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelToHalf] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsAbandToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeueToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelErrorToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelRONAToHalf] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedToHalf] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeuedToHalf] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKSkill_Group_Half_Hour] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Skill_Group_Half_Hour] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Skill_Group_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Skill_Group_Interval](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallbackMessages] [dbo].[DBINT] NULL,
	[CallbackMessagesTime] [dbo].[DBINT] NULL,
	[AvgHandledCallsTalkTime] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[HandledCallsTalkTime] [dbo].[DBINT] NULL,
	[InternalCalls] [dbo].[DBINT] NULL,
	[InternalCallsTime] [dbo].[DBINT] NULL,
	[CallsHandled] [dbo].[DBINT] NULL,
	[SupervAssistCalls] [dbo].[DBINT] NULL,
	[AvgHandledCallsTime] [dbo].[DBINT] NULL,
	[SupervAssistCallsTime] [dbo].[DBINT] NULL,
	[HandledCallsTime] [dbo].[DBINT] NULL,
	[PercentUtilization] [dbo].[DBFLT4] NULL,
	[AgentOutCallsTime] [dbo].[DBINT] NULL,
	[TalkInTime] [dbo].[DBINT] NULL,
	[LoggedOnTime] [dbo].[DBINT] NULL,
	[AgentOutCalls] [dbo].[DBINT] NULL,
	[TalkOutTime] [dbo].[DBINT] NULL,
	[TalkOtherTime] [dbo].[DBINT] NULL,
	[AvailTime] [dbo].[DBINT] NULL,
	[NotReadyTime] [dbo].[DBINT] NULL,
	[TransferInCalls] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[TransferInCallsTime] [dbo].[DBINT] NULL,
	[WorkReadyTime] [dbo].[DBINT] NULL,
	[TransferOutCalls] [dbo].[DBINT] NULL,
	[WorkNotReadyTime] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[BusyOtherTime] [dbo].[DBINT] NULL,
	[CallsAnswered] [dbo].[DBINT] NULL,
	[ReservedStateTime] [dbo].[DBINT] NULL,
	[AnswerWaitTime] [dbo].[DBINT] NULL,
	[AbandonRingCalls] [dbo].[DBINT] NULL,
	[AbandonRingTime] [dbo].[DBINT] NULL,
	[AbandonHoldCalls] [dbo].[DBINT] NULL,
	[AgentOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHold] [dbo].[DBINT] NULL,
	[AgentOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[AgentTerminatedCalls] [dbo].[DBINT] NULL,
	[ConsultativeCalls] [dbo].[DBINT] NULL,
	[ConsultativeCallsTime] [dbo].[DBINT] NULL,
	[ConferencedInCalls] [dbo].[DBINT] NULL,
	[ConferencedInCallsTime] [dbo].[DBINT] NULL,
	[ConferencedOutCalls] [dbo].[DBINT] NULL,
	[ConferencedOutCallsTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHoldTime] [dbo].[DBINT] NULL,
	[IncomingCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsOnHoldTime] [dbo].[DBINT] NULL,
	[InternalCallsOnHold] [dbo].[DBINT] NULL,
	[InternalCallsRcvdTime] [dbo].[DBINT] NULL,
	[InternalCallsRcvd] [dbo].[DBINT] NULL,
	[RedirectNoAnsCalls] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTime] [dbo].[DBINT] NULL,
	[ShortCalls] [dbo].[DBINT] NULL,
	[RouterCallsAbandQ] [dbo].[DBINT] NULL,
	[RouterQueueCalls] [dbo].[DBINT] NULL,
	[AutoOutCalls] [dbo].[DBINT] NULL,
	[AutoOutCallsTime] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTime] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHold] [dbo].[DBINT] NULL,
	[AutoOutCallsOnHoldTime] [dbo].[DBINT] NULL,
	[PreviewCalls] [dbo].[DBINT] NULL,
	[PreviewCallsTime] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTime] [dbo].[DBINT] NULL,
	[PreviewCallsOnHold] [dbo].[DBINT] NULL,
	[PreviewCallsOnHoldTime] [dbo].[DBINT] NULL,
	[ReserveCalls] [dbo].[DBINT] NULL,
	[ReserveCallsTime] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTime] [dbo].[DBINT] NULL,
	[ReserveCallsOnHold] [dbo].[DBINT] NULL,
	[ReserveCallsOnHoldTime] [dbo].[DBINT] NULL,
	[TalkAutoOutTime] [dbo].[DBINT] NULL,
	[TalkPreviewTime] [dbo].[DBINT] NULL,
	[TalkReserveTime] [dbo].[DBINT] NULL,
	[BargeInCalls] [dbo].[DBINT] NULL,
	[InterceptCalls] [dbo].[DBINT] NULL,
	[MonitorCalls] [dbo].[DBINT] NULL,
	[WhisperCalls] [dbo].[DBINT] NULL,
	[EmergencyAssists] [dbo].[DBINT] NULL,
	[CallsOffered] [dbo].[DBINT] NULL,
	[CallsQueued] [dbo].[DBINT] NULL,
	[InterruptedTime] [dbo].[DBINT] NULL,
	[AbandonHoldCallsOut] [dbo].[DBINT] NULL,
	[NetConsultativeCalls] [dbo].[DBINT] NULL,
	[NetConsultativeCallsTime] [dbo].[DBINT] NULL,
	[NetConferencedOutCalls] [dbo].[DBINT] NULL,
	[NetConfOutCallsTime] [dbo].[DBINT] NULL,
	[NetTransferOutCalls] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[RouterCallsOffered] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgent] [dbo].[DBINT] NULL,
	[RouterCallsDequeued] [dbo].[DBINT] NULL,
	[RouterError] [dbo].[DBINT] NULL,
	[ServiceLevel] [dbo].[DBFLT4] NULL,
	[ServiceLevelCalls] [dbo].[DBINT] NULL,
	[ServiceLevelCallsAband] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeue] [dbo].[DBINT] NULL,
	[ServiceLevelError] [dbo].[DBINT] NULL,
	[ServiceLevelRONA] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOffered] [dbo].[DBINT] NULL,
	[Reserved1] [dbo].[DBINT] NULL,
	[Reserved2] [dbo].[DBINT] NULL,
	[Reserved3] [dbo].[DBINT] NULL,
	[Reserved4] [dbo].[DBINT] NULL,
	[Reserved5] [dbo].[DBFLT4] NULL,
	[CampaignID] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeued] [dbo].[DBINT] NULL,
	[ReportingHalfHour] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[BucketIntervalID] [dbo].[DBINT] NULL,
	[ConsultOutCalls] [dbo].[DBINT] NULL,
	[ConsultOutCallsTime] [dbo].[DBINT] NULL,
	[RouterDelayQAbandTime] [dbo].[DBINT] NULL,
	[RouterAbandInterval1] [dbo].[DBINT] NULL,
	[RouterAbandInterval2] [dbo].[DBINT] NULL,
	[RouterAbandInterval3] [dbo].[DBINT] NULL,
	[RouterAbandInterval4] [dbo].[DBINT] NULL,
	[RouterAbandInterval5] [dbo].[DBINT] NULL,
	[RouterAbandInterval6] [dbo].[DBINT] NULL,
	[RouterAbandInterval7] [dbo].[DBINT] NULL,
	[RouterAbandInterval8] [dbo].[DBINT] NULL,
	[RouterAbandInterval9] [dbo].[DBINT] NULL,
	[RouterAbandInterval10] [dbo].[DBINT] NULL,
	[RouterAnsInterval1] [dbo].[DBINT] NULL,
	[RouterAnsInterval2] [dbo].[DBINT] NULL,
	[RouterAnsInterval3] [dbo].[DBINT] NULL,
	[RouterAnsInterval4] [dbo].[DBINT] NULL,
	[RouterAnsInterval5] [dbo].[DBINT] NULL,
	[RouterAnsInterval6] [dbo].[DBINT] NULL,
	[RouterAnsInterval7] [dbo].[DBINT] NULL,
	[RouterAnsInterval8] [dbo].[DBINT] NULL,
	[RouterAnsInterval9] [dbo].[DBINT] NULL,
	[RouterAnsInterval10] [dbo].[DBINT] NULL,
	[RouterMaxCallsQueued] [dbo].[DBINT] NULL,
	[RouterMaxCallWaitTime] [dbo].[DBINT] NULL,
	[PrecisionQueueID] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKSkill_Group_Interval] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[SkillTargetID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Skill_Group_Interval] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Skill_Group_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Skill_Group_Member](
	[SkillGroupSkillTargetID] [dbo].[DBINT] NOT NULL,
	[AgentSkillTargetID] [dbo].[DBINT] NOT NULL,
 CONSTRAINT [XPKSkill_Group_Members] PRIMARY KEY CLUSTERED 
(
	[SkillGroupSkillTargetID] ASC,
	[AgentSkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Skill_Group_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Skill_Group_Real_Time](
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[AgentOutCallsTo5] [dbo].[DBINT] NULL,
	[AnswerWaitTimeTo5] [dbo].[DBINT] NULL,
	[Avail] [dbo].[DBINT] NULL,
	[AvailTimeTo5] [dbo].[DBINT] NULL,
	[AvgHandledCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[AvgHandledCallsTimeTo5] [dbo].[DBINT] NULL,
	[BusyOther] [dbo].[DBINT] NULL,
	[BusyOtherTimeTo5] [dbo].[DBINT] NULL,
	[CallsAnsweredTo5] [dbo].[DBINT] NULL,
	[CallsHandledTo5] [dbo].[DBINT] NULL,
	[CallsOfferedTo5] [dbo].[DBINT] NULL,
	[HandledCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[HandledCallsTimeTo5] [dbo].[DBINT] NULL,
	[AgentOutCallsTimeTo5] [dbo].[DBINT] NULL,
	[Hold] [dbo].[DBINT] NULL,
	[HoldTimeTo5] [dbo].[DBINT] NULL,
	[LoggedOn] [dbo].[DBINT] NULL,
	[LoggedOnTimeTo5] [dbo].[DBINT] NULL,
	[LongestAvailAgent] [dbo].[DBDATETIME] NULL,
	[LongestCallQ] [dbo].[DBDATETIME] NULL,
	[NotReady] [dbo].[DBINT] NULL,
	[NotReadyTimeTo5] [dbo].[DBINT] NULL,
	[PercentUtilizationTo5] [dbo].[DBFLT4] NULL,
	[Ready] [dbo].[DBINT] NULL,
	[ReservedAgents] [dbo].[DBINT] NULL,
	[ReservedStateTimeTo5] [dbo].[DBINT] NULL,
	[TalkingIn] [dbo].[DBINT] NULL,
	[TalkingOther] [dbo].[DBINT] NULL,
	[TalkingOut] [dbo].[DBINT] NULL,
	[TalkInTimeTo5] [dbo].[DBINT] NULL,
	[TalkOtherTimeTo5] [dbo].[DBINT] NULL,
	[TalkOutTimeTo5] [dbo].[DBINT] NULL,
	[TalkTimeTo5] [dbo].[DBINT] NULL,
	[TransferInCallsTimeTo5] [dbo].[DBINT] NULL,
	[TransferInCallsTo5] [dbo].[DBINT] NULL,
	[TransferOutCallsTo5] [dbo].[DBINT] NULL,
	[WorkNotReady] [dbo].[DBINT] NULL,
	[WorkNotReadyTimeTo5] [dbo].[DBINT] NULL,
	[WorkReady] [dbo].[DBINT] NULL,
	[WorkReadyTimeTo5] [dbo].[DBINT] NULL,
	[RouterCallsQNow] [dbo].[DBINT] NULL,
	[AutoOutCallsTo5] [dbo].[DBINT] NULL,
	[AutoOutCallsTimeTo5] [dbo].[DBINT] NULL,
	[AutoOutCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[PreviewCallsTo5] [dbo].[DBINT] NULL,
	[PreviewCallsTimeTo5] [dbo].[DBINT] NULL,
	[PreviewCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[ReserveCallsTo5] [dbo].[DBINT] NULL,
	[ReserveCallsTimeTo5] [dbo].[DBINT] NULL,
	[ReserveCallsTalkTimeTo5] [dbo].[DBINT] NULL,
	[TalkingAutoOut] [dbo].[DBINT] NULL,
	[TalkingPreview] [dbo].[DBINT] NULL,
	[TalkingReserve] [dbo].[DBINT] NULL,
	[TalkAutoOutTimeTo5] [dbo].[DBINT] NULL,
	[TalkPreviewTimeTo5] [dbo].[DBINT] NULL,
	[TalkReserveTimeTo5] [dbo].[DBINT] NULL,
	[CallsQueuedNow] [dbo].[DBINT] NULL,
	[CallsInProgress] [dbo].[DBINT] NULL,
	[NumAgentsInterruptedNow] [dbo].[DBINT] NULL,
	[InterruptedTimeTo5] [dbo].[DBINT] NULL,
	[RouterLongestCallInQ] [dbo].[DBDATETIME] NULL,
	[IcmAvailable] [dbo].[DBINT] NULL,
	[ApplicationAvailable] [dbo].[DBINT] NULL,
	[RedirectNoAnsCallsTo5] [dbo].[DBINT] NULL,
	[RouterCallsOfferedTo5] [dbo].[DBINT] NULL,
	[RouterCallsAbandToAgentTo5] [dbo].[DBINT] NULL,
	[RouterCallsDequeuedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelTo5] [dbo].[DBFLT4] NULL,
	[ServiceLevelCallsTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsAbandTo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsDequeuedTo5] [dbo].[DBINT] NULL,
	[ServiceLevelRONATo5] [dbo].[DBINT] NULL,
	[ServiceLevelCallsOfferedTo5] [dbo].[DBINT] NULL,
	[RouterCallsAbandQTo5] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
	[RouterCallsAbandDequeuedTo5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKSkill_Group_Real_Time] PRIMARY KEY CLUSTERED 
(
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_System_Attribute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_System_Attribute](
	[SystemAttributeID] [dbo].[DBINT] NOT NULL,
	[AttributeName] [varchar](128) NOT NULL,
	[AttributeValue] [varchar](512) NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
 CONSTRAINT [XPKSystem_Attribute] PRIMARY KEY CLUSTERED 
(
	[SystemAttributeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1System_Attribute] UNIQUE NONCLUSTERED 
(
	[AttributeName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_System_Capacity_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_System_Capacity_Interval](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[ICRInstanceID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NOT NULL,
	[MaxAgentsLoggedIn] [dbo].[DBINT] NULL,
	[MaxCPS] [dbo].[DBINT] NULL,
	[MaxCVPCallControlPorts] [dbo].[DBINT] NULL,
	[MaxVRUPorts] [dbo].[DBINT] NULL,
	[MaxCallsInProgress] [dbo].[DBINT] NULL,
	[MaxAgentQueuePairs] [dbo].[DBINT] NULL,
	[MaxCallTypeSkillGroupPairs] [dbo].[DBINT] NULL,
	[MaxCongestionLevel] [dbo].[DBINT] NULL,
	[ReportingInterval] [dbo].[DBINT] NULL,
	[FutureUseInt1] [dbo].[DBINT] NULL,
	[FutureUseInt2] [dbo].[DBINT] NULL,
	[FutureUseInt3] [dbo].[DBINT] NULL,
	[FutureUseInt4] [dbo].[DBINT] NULL,
	[FutureUseInt5] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKSystem_Capacity_Interval] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[ICRInstanceID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1System_Capacity_Interval] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_System_Capacity_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_System_Capacity_Real_Time](
	[ICRInstanceID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[CurrentCongestionLevel] [dbo].[DBINT] NOT NULL,
	[ConfiguredCapacity] [dbo].[DBINT] NOT NULL,
	[AdjustedCapacity] [dbo].[DBINT] NOT NULL,
	[TotalAgentsLoggedOn] [dbo].[DBINT] NOT NULL,
	[AverageSkillsPerAgent] [dbo].[DBINT] NOT NULL,
	[Level1Onset] [dbo].[DBINT] NOT NULL,
	[Level1Abatement] [dbo].[DBINT] NOT NULL,
	[Level1Reduction] [dbo].[DBINT] NOT NULL,
	[Level2Onset] [dbo].[DBINT] NOT NULL,
	[Level2Abatement] [dbo].[DBINT] NOT NULL,
	[Level2Reduction] [dbo].[DBINT] NOT NULL,
	[Level3Onset] [dbo].[DBINT] NOT NULL,
	[Level3Abatement] [dbo].[DBINT] NOT NULL,
	[Level3Reduction] [dbo].[DBINT] NOT NULL,
	[AverageCPS] [dbo].[DBFLT4] NOT NULL,
	[DateTimeCongested] [dbo].[DBDATETIME] NOT NULL,
	[DateTimeCurrentLevel] [dbo].[DBDATETIME] NOT NULL,
	[RejectionPercentage] [dbo].[DBINT] NOT NULL,
	[FutureUse1] [dbo].[DBINT] NULL,
	[FutureUse2] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKSystem_Capacity_Real_Time] PRIMARY KEY CLUSTERED 
(
	[ICRInstanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Termination_Call_Detail]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Termination_Call_Detail](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[MRDomainID] [dbo].[DBINT] NULL,
	[AgentSkillTargetID] [dbo].[DBINT] NULL,
	[SkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[ServiceSkillTargetID] [dbo].[DBINT] NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[RouteID] [dbo].[DBINT] NULL,
	[RouterCallKeyDay] [dbo].[DBINT] NULL,
	[RouterCallKey] [dbo].[DBINT] NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[PeripheralCallType] [dbo].[DBSMALLINT] NULL,
	[DigitsDialed] [varchar](40) NULL,
	[PeripheralCallKey] [dbo].[DBINT] NULL,
	[CallDisposition] [dbo].[DBSMALLINT] NOT NULL,
	[NetworkTime] [dbo].[DBINT] NULL,
	[Duration] [dbo].[DBINT] NULL,
	[RingTime] [dbo].[DBINT] NULL,
	[DelayTime] [dbo].[DBINT] NULL,
	[TimeToAband] [dbo].[DBINT] NULL,
	[HoldTime] [dbo].[DBINT] NULL,
	[TalkTime] [dbo].[DBINT] NULL,
	[WorkTime] [dbo].[DBINT] NULL,
	[LocalQTime] [dbo].[DBINT] NULL,
	[BillRate] [dbo].[DBSMALLINT] NULL,
	[CallSegmentTime] [dbo].[DBINT] NULL,
	[ConferenceTime] [dbo].[DBINT] NULL,
	[Variable1] [varchar](40) NULL,
	[Variable2] [varchar](40) NULL,
	[Variable3] [varchar](40) NULL,
	[Variable4] [varchar](40) NULL,
	[Variable5] [varchar](40) NULL,
	[UserToUser] [varchar](131) NULL,
	[NewTransaction] [dbo].[DBCHAR] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NULL,
	[NetworkTargetID] [dbo].[DBINT] NULL,
	[TrunkGroupID] [dbo].[DBINT] NULL,
	[DNIS] [dbo].[VNAME32] NULL,
	[InstrumentPortNumber] [dbo].[DBINT] NULL,
	[AgentPeripheralNumber] [varchar](32) NULL,
	[ICRCallKey] [dbo].[DBINT] NOT NULL,
	[ICRCallKeyParent] [dbo].[DBINT] NULL,
	[ICRCallKeyChild] [dbo].[DBINT] NULL,
	[Variable6] [varchar](40) NULL,
	[Variable7] [varchar](40) NULL,
	[Variable8] [varchar](40) NULL,
	[Variable9] [varchar](40) NULL,
	[Variable10] [varchar](40) NULL,
	[ANI] [varchar](32) NULL,
	[AnsweredWithinServiceLevel] [dbo].[DBCHAR] NULL,
	[Priority] [dbo].[DBSMALLINT] NULL,
	[Trunk] [dbo].[DBINT] NULL,
	[WrapupData] [varchar](40) NULL,
	[SourceAgentPeripheralNumber] [varchar](32) NULL,
	[SourceAgentSkillTargetID] [dbo].[DBINT] NULL,
	[CallDispositionFlag] [dbo].[DBINT] NULL,
	[RouterCallKeySequenceNumber] [dbo].[DBINT] NULL,
	[CED] [varchar](30) NULL,
	[CallTypeID] [dbo].[DBINT] NULL,
	[BadCallTag] [dbo].[DBCHAR] NULL,
	[ApplicationTaskDisposition] [dbo].[DBINT] NULL,
	[ApplicationData] [varchar](100) NULL,
	[NetQTime] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
	[ECCPayloadID] [dbo].[DBINT] NULL,
	[CallTypeReportingDateTime] [dbo].[DBDATETIME] NULL,
	[RoutedSkillGroupSkillTargetID] [dbo].[DBINT] NULL,
	[RoutedServiceSkillTargetID] [dbo].[DBINT] NULL,
	[RoutedAgentSkillTargetID] [dbo].[DBINT] NULL,
	[Originated] [char](1) NULL,
	[CallReferenceID] [varchar](32) NULL,
	[CallGUID] [varchar](32) NULL,
	[LocationParamPKID] [varchar](128) NULL,
	[LocationParamName] [varchar](50) NULL,
	[PstnTrunkGroupID] [varchar](32) NULL,
	[PstnTrunkGroupChannelNumber] [dbo].[DBINT] NULL,
	[NetworkSkillGroupQTime] [dbo].[DBINT] NULL,
	[EnterpriseQueueTime] [dbo].[DBINT] NULL,
	[StartDateTimeUTC] [dbo].[DBDATETIME] NULL,
	[ProtocolID] [dbo].[DBINT] NULL,
	[PrecisionQueueID] [dbo].[DBINT] NULL,
	[PrecisionQueueStepOrder] [dbo].[DBINT] NULL,
	[Attributes] [varchar](255) NULL,
 CONSTRAINT [XPKTermination_Call_Detail] PRIMARY KEY NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 70) ON [PRIMARY],
 CONSTRAINT [XAK2Termination_Call_Detail] UNIQUE CLUSTERED 
(
	[DateTime] ASC,
	[PeripheralID] ASC,
	[ICRCallKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Termination_Call_Variable]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Termination_Call_Variable](
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TCDRecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[ExpandedCallVariableID] [dbo].[DBSMALLINT] NOT NULL,
	[ArrayIndex] [dbo].[DBINT] NOT NULL,
	[ECCValue] [varchar](255) NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKTermination_Call_Variable] PRIMARY KEY NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Termination_Call_Variable] UNIQUE CLUSTERED 
(
	[TCDRecoveryKey] ASC,
	[ExpandedCallVariableID] ASC,
	[ArrayIndex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Translation_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Translation_Route](
	[SkillTargetID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[LogicalControllerID] [dbo].[DBSMALLINT] NOT NULL,
	[Type] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKTranslation_Routes] PRIMARY KEY CLUSTERED 
(
	[SkillTargetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Translation_Route] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Translation_Route_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Translation_Route_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TranslationRouteSkillTargetID] [dbo].[DBINT] NOT NULL,
	[RoutingClientID] [dbo].[DBSMALLINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[UsedToHalf] [dbo].[DBINT] NULL,
	[UnAvailableToHalf] [dbo].[DBINT] NULL,
	[RouterTimeOutsToHalf] [dbo].[DBINT] NULL,
	[PGTimeOutsToHalf] [dbo].[DBINT] NULL,
	[AvgRoutesInUseToHalf] [dbo].[DBINT] NULL,
	[MaxRoutesInUseToHalf] [dbo].[DBINT] NULL,
	[RoutedToHalf] [dbo].[DBINT] NULL,
	[AvgRouteTimeToHalf] [dbo].[DBINT] NULL,
	[MaxRouteTimeToHalf] [dbo].[DBINT] NULL,
	[ConfigErrorsToHalf] [dbo].[DBINT] NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKTranslation_Route_Half_Hour] PRIMARY KEY NONCLUSTERED 
(
	[DateTime] ASC,
	[TranslationRouteSkillTargetID] ASC,
	[RoutingClientID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Translation_Route_Half_Hou] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Trunk]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Trunk](
	[TrunkID] [dbo].[DBINT] NOT NULL,
	[TrunkGroupID] [dbo].[DBINT] NOT NULL,
	[TrunkNumber] [dbo].[DBINT] NOT NULL,
	[TrunkType] [dbo].[DBSMALLINT] NOT NULL,
	[CircuitProvider] [dbo].[VNAME32] NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKTrunk] PRIMARY KEY CLUSTERED 
(
	[TrunkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAKTrunk] UNIQUE NONCLUSTERED 
(
	[TrunkGroupID] ASC,
	[TrunkNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Trunk_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Trunk_Group](
	[TrunkGroupID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[PeripheralID] [dbo].[DBSMALLINT] NOT NULL,
	[PeripheralNumber] [dbo].[DBINT] NOT NULL,
	[PeripheralName] [dbo].[VNAME32] NOT NULL,
	[NetworkTrunkGroupID] [dbo].[DBINT] NULL,
	[TrunkCount] [dbo].[DBINT] NOT NULL,
	[Extension] [dbo].[VTELNO10] NULL,
	[ConfigParam] [varchar](255) NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Deleted] [dbo].[DBCHAR] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKTrunk_Group] PRIMARY KEY CLUSTERED 
(
	[TrunkGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Trunk_Group] UNIQUE NONCLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK2Trunk_Group] UNIQUE NONCLUSTERED 
(
	[PeripheralID] ASC,
	[PeripheralNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Trunk_Group_Five_Minute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Trunk_Group_Five_Minute](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TrunkGroupID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[TrunksInService] [dbo].[DBINT] NULL,
	[AllTrunksBusyToHalf] [dbo].[DBINT] NULL,
	[TrunksIdle] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
 CONSTRAINT [XPKTrunk_Group_Five_Minute] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[TrunkGroupID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Trunk_Group_Five_Minute] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Trunk_Group_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Trunk_Group_Half_Hour](
	[DateTime] [dbo].[DBSMALLDATE] NOT NULL,
	[TrunkGroupID] [dbo].[DBINT] NOT NULL,
	[TimeZone] [dbo].[DBINT] NOT NULL,
	[CallsAbandonedToHalf] [dbo].[DBINT] NULL,
	[CallsInToHalf] [dbo].[DBINT] NULL,
	[TrunksInService] [dbo].[DBINT] NULL,
	[CallsOutToHalf] [dbo].[DBINT] NULL,
	[AllTrunksBusyToHalf] [dbo].[DBINT] NULL,
	[InServiceTimeToHalf] [dbo].[DBINT] NULL,
	[TrunksIdle] [dbo].[DBINT] NULL,
	[InUseInboundTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryDay] [dbo].[DBINT] NOT NULL,
	[InUseOutboundTimeToHalf] [dbo].[DBINT] NULL,
	[RecoveryKey] [dbo].[DBFLT8] NOT NULL,
	[DbDateTime] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKTrunk_Group_Half_Hour] PRIMARY KEY CLUSTERED 
(
	[DateTime] ASC,
	[TrunkGroupID] ASC,
	[TimeZone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1Trunk_Group_Half_Hour] UNIQUE NONCLUSTERED 
(
	[RecoveryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_Trunk_Group_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_Trunk_Group_Real_Time](
	[TrunkGroupID] [dbo].[DBINT] NOT NULL,
	[DateTime] [dbo].[DBDATETIME] NOT NULL,
	[AllTrunksBusyHalf] [dbo].[DBINT] NULL,
	[AllTrunksBusyToday] [dbo].[DBINT] NULL,
	[CallsAbandonedHalf] [dbo].[DBINT] NULL,
	[CallsAbandonedToday] [dbo].[DBINT] NULL,
	[CallsInHalf] [dbo].[DBINT] NULL,
	[CallsInNow] [dbo].[DBINT] NULL,
	[CallsInToday] [dbo].[DBINT] NULL,
	[CallsOutHalf] [dbo].[DBINT] NULL,
	[CallsOutNow] [dbo].[DBINT] NULL,
	[CallsOutToday] [dbo].[DBINT] NULL,
	[InServiceTimeHalf] [dbo].[DBINT] NULL,
	[InServiceTimeToday] [dbo].[DBINT] NULL,
	[InUseInboundTimeHalf] [dbo].[DBINT] NULL,
	[InUseInboundTimeToday] [dbo].[DBINT] NULL,
	[InUseOutboundTimeHalf] [dbo].[DBINT] NULL,
	[InUseOutboundTimeToday] [dbo].[DBINT] NULL,
	[TrunksIdle] [dbo].[DBINT] NULL,
	[TrunksInService] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKTrunk_Group_Real_Time] PRIMARY KEY NONCLUSTERED 
(
	[TrunkGroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[t_User_Formula]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_User_Formula](
	[UserFormulaID] [dbo].[DBINT] NOT NULL,
	[EnterpriseName] [dbo].[VNAME32] NOT NULL,
	[ParamCount] [dbo].[DBINT] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Length] [dbo].[DBINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DepartmentID] [dbo].[DBINT] NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKUser_Formula] PRIMARY KEY NONCLUSTERED 
(
	[UserFormulaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1User_Formula] UNIQUE CLUSTERED 
(
	[EnterpriseName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_User_Formula_Equation]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_User_Formula_Equation](
	[UserFormulaID] [dbo].[DBINT] NOT NULL,
	[RowOrder] [dbo].[DBINT] NOT NULL,
	[EquationString] [varchar](255) NULL,
 CONSTRAINT [XPKUser_Formula_Equation] PRIMARY KEY CLUSTERED 
(
	[UserFormulaID] ASC,
	[RowOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_User_Variable]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_User_Variable](
	[UserVariableID] [dbo].[DBINT] NOT NULL,
	[ObjectType] [dbo].[DBSMALLINT] NOT NULL,
	[VariableName] [dbo].[VNAME32] NOT NULL,
	[Description] [dbo].[DESCRIPTION] NULL,
	[Persistent] [dbo].[DBCHAR] NOT NULL,
	[DataType] [dbo].[DBSMALLINT] NOT NULL,
	[Instance] [dbo].[DBCHAR] NOT NULL,
	[ReportingMethod] [dbo].[DBSMALLINT] NOT NULL,
	[ChangeStamp] [dbo].[CHANGESTAMP] NOT NULL,
	[DateTimeStamp] [dbo].[DBDATETIME] NULL,
 CONSTRAINT [XPKUser_Variable] PRIMARY KEY CLUSTERED 
(
	[UserVariableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [XAK1User_Variable] UNIQUE NONCLUSTERED 
(
	[ObjectType] ASC,
	[VariableName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[t_Vru_Port_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[t_Vru_Port_Map](
	[TrunkID] [dbo].[DBINT] NOT NULL,
	[Type] [dbo].[DBINT] NOT NULL,
	[ACDPeripheralID] [dbo].[DBSMALLINT] NULL,
	[ACDPort] [dbo].[VNAME32] NULL,
	[ACDTrunkID] [dbo].[DBINT] NULL,
 CONSTRAINT [XPKVru_Port_Map] PRIMARY KEY CLUSTERED 
(
	[TrunkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[Admin_Script_Schedule_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Admin_Script_Schedule_Map] AS
SELECT t.*
FROM t_Admin_Script_Schedule_Map t
GO
/****** Object:  View [dbo].[Agent]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent] AS
SELECT t.*
FROM t_Agent t
GO
/****** Object:  View [dbo].[Agent_Attribute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Attribute] AS
SELECT t.*
FROM t_Agent_Attribute t
GO
/****** Object:  View [dbo].[Agent_Desk_Settings]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Desk_Settings] AS
SELECT t.*
FROM t_Agent_Desk_Settings t
GO
/****** Object:  View [dbo].[Agent_Distribution]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Distribution] AS
SELECT t.*
FROM t_Agent_Distribution t
GO
/****** Object:  View [dbo].[Agent_Event_Detail]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Event_Detail] AS
SELECT t.*
FROM eu03_hds.dbo.Agent_Event_Detail t
GO
/****** Object:  View [dbo].[Agent_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Agent_Half_Hour t
GO
/****** Object:  View [dbo].[Agent_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Interval] AS
SELECT t.*
FROM eu03_hds.dbo.Agent_Interval t
GO
/****** Object:  View [dbo].[Agent_Logout]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Logout] AS
SELECT t.*
FROM eu03_hds.dbo.Agent_Logout t
GO
/****** Object:  View [dbo].[Agent_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Real_Time] AS
SELECT t.*
FROM t_Agent_Real_Time t
GO
/****** Object:  View [dbo].[Agent_Skill_Group_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Skill_Group_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Agent_Skill_Group_Half_Hour t
GO
/****** Object:  View [dbo].[Agent_Skill_Group_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Skill_Group_Interval] AS
SELECT t.*
FROM eu03_hds.dbo.Agent_Skill_Group_Interval t
GO
/****** Object:  View [dbo].[Agent_Skill_Group_Logout]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Skill_Group_Logout] AS
SELECT t.*
FROM eu03_hds.dbo.Agent_Skill_Group_Logout t
GO
/****** Object:  View [dbo].[Agent_Skill_Group_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Skill_Group_Real_Time] AS
SELECT t.SkillTargetID as SkillTargetID,
t.SkillGroupSkillTargetID as SkillGroupSkillTargetID,
t.PrecisionQueueID as PrecisionQueueID,
t.DateTime as DateTime,
t.AgentState as AgentState,
t.ReasonCode as ReasonCode,
t.DateTimeLastStateChange as DateTimeLastStateChange,
t.DateTimeLogin as DateTimeLogin,
t.Priority as Priority,
t.CallsInProgress as CallsInProgress,
t.AttributeID1 as Attribute1,
t.AttributeID2 as Attribute2,
t.AttributeID3 as Attribute3,
t.AttributeID4 as Attribute4,
t.AttributeID5 as Attribute5,
t.FutureUseInt1 as FutureUseInt1,
t.FutureUseInt2 as FutureUseInt2,
t.FutureUseInt3 as FutureUseInt3,
t.FutureUseInt4 as FutureUseInt4,
t.FutureUseInt5 as FutureUseInt5,
t.AttributeID6 as Attribute6,
t.AttributeID7 as Attribute7,
t.AttributeID8 as Attribute8,
t.AttributeID9 as Attribute9,
t.AttributeID10 as Attribute10
FROM t_Agent_Skill_Group_Real_Time t
GO
/****** Object:  View [dbo].[Agent_State_Trace]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_State_Trace] AS
SELECT t.*
FROM eu03_hds.dbo.Agent_State_Trace t
GO
/****** Object:  View [dbo].[Agent_Targeting_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Targeting_Rule] AS
SELECT t.*
FROM t_Agent_Targeting_Rule t
GO
/****** Object:  View [dbo].[Agent_Team]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Team] AS
SELECT t.*
FROM t_Agent_Team t
GO
/****** Object:  View [dbo].[Agent_Team_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Team_Member] AS
SELECT t.*
FROM t_Agent_Team_Member t
GO
/****** Object:  View [dbo].[Agent_Team_Supervisor]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Agent_Team_Supervisor] AS
SELECT t.*
FROM t_Agent_Team_Supervisor t
GO
/****** Object:  View [dbo].[Announcement]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Announcement] AS
SELECT t.*
FROM t_Announcement t
GO
/****** Object:  View [dbo].[Application_Event]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Application_Event] AS
SELECT t.*
FROM eu03_hds.dbo.Application_Event t
GO
/****** Object:  View [dbo].[Application_Gateway]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Application_Gateway] AS
SELECT t.*
FROM t_Application_Gateway t
GO
/****** Object:  View [dbo].[Application_Gateway_Connection]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Application_Gateway_Connection] AS
SELECT t.*
FROM t_Application_Gateway_Connecti t
GO
/****** Object:  View [dbo].[Application_Gateway_Globals]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Application_Gateway_Globals] AS
SELECT t.*
FROM t_Application_Gateway_Globals t
GO
/****** Object:  View [dbo].[Application_Gateway_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Application_Gateway_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Application_Gateway_Half_Hour t
GO
/****** Object:  View [dbo].[Application_Gateway_License]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Application_Gateway_License] AS
SELECT t.*
FROM t_Application_Gateway_License t
GO
/****** Object:  View [dbo].[Application_Instance]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Application_Instance] AS
SELECT t.*
FROM t_Application_Instance t
GO
/****** Object:  View [dbo].[Application_Path]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Application_Path] AS
SELECT t.*
FROM t_Application_Path t
GO
/****** Object:  View [dbo].[Application_Path_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Application_Path_Member] AS
SELECT t.*
FROM t_Application_Path_Member t
GO
/****** Object:  View [dbo].[Application_Path_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Application_Path_Real_Time] AS
SELECT t.*
FROM t_Application_Path_Real_Time t
GO
/****** Object:  View [dbo].[Attribute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Attribute] AS
SELECT t.*
FROM t_Attribute t
GO
/****** Object:  View [dbo].[Attribute_Set]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Attribute_Set] AS
SELECT t.*
FROM t_Attribute_Set t
GO
/****** Object:  View [dbo].[Attribute_Set_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Attribute_Set_Member] AS
SELECT t.*
FROM t_Attribute_Set_Member t
GO
/****** Object:  View [dbo].[Bucket_Intervals]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Bucket_Intervals] AS
SELECT t.*
FROM t_Bucket_Intervals t
GO
/****** Object:  View [dbo].[Bulk_Job]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Bulk_Job] AS
SELECT t.*
FROM t_Bulk_Job t
GO
/****** Object:  View [dbo].[Business_Entity]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Business_Entity] AS
SELECT t.*
FROM t_Business_Entity t
GO
/****** Object:  View [dbo].[Call_Type]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Call_Type] AS
SELECT t.*
FROM t_Call_Type t
GO
/****** Object:  View [dbo].[Call_Type_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Call_Type_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Call_Type_Half_Hour t
GO
/****** Object:  View [dbo].[Call_Type_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Call_Type_Interval] AS
SELECT t.*
FROM eu03_hds.dbo.Call_Type_Interval t
GO
/****** Object:  View [dbo].[Call_Type_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Call_Type_Map] AS
SELECT t.*
FROM t_Call_Type_Map t
GO
/****** Object:  View [dbo].[Call_Type_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Call_Type_Real_Time] AS
SELECT t.*
FROM t_Call_Type_Real_Time t
GO
/****** Object:  View [dbo].[Call_Type_SG_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Call_Type_SG_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Call_Type_SG_Half_Hour t
GO
/****** Object:  View [dbo].[Call_Type_SG_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Call_Type_SG_Interval] AS
SELECT t.*
FROM eu03_hds.dbo.Call_Type_SG_Interval t
GO
/****** Object:  View [dbo].[Campaign]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Campaign] AS
SELECT t.*
FROM t_Campaign t
GO
/****** Object:  View [dbo].[Campaign_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Campaign_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Campaign_Half_Hour t
GO
/****** Object:  View [dbo].[Campaign_Query_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Campaign_Query_Rule] AS
SELECT t.*
FROM t_Campaign_Query_Rule t
GO
/****** Object:  View [dbo].[Campaign_Query_Rule_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Campaign_Query_Rule_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Campaign_Query_Rule_Half_Hour t
GO
/****** Object:  View [dbo].[Campaign_Query_Rule_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Campaign_Query_Rule_Interval] AS
SELECT t.*
FROM eu03_hds.dbo.Campaign_Query_Rule_Interval t
GO
/****** Object:  View [dbo].[Campaign_Query_Rule_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Campaign_Query_Rule_Real_Time] AS
SELECT t.*
FROM t_Campaign_Query_Rule_Real_Tim t
GO
/****** Object:  View [dbo].[Campaign_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Campaign_Real_Time] AS
SELECT t.*
FROM t_Campaign_Real_Time t
GO
/****** Object:  View [dbo].[Campaign_Skill_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Campaign_Skill_Group] AS
SELECT t.*
FROM t_Campaign_Skill_Group t
GO
/****** Object:  View [dbo].[Campaign_Target_Sequence]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Campaign_Target_Sequence] AS
SELECT t.*
FROM t_Campaign_Target_Sequence t
GO
/****** Object:  View [dbo].[ClassID_To_ObjectType]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ClassID_To_ObjectType] AS
SELECT t.*
FROM t_ClassID_To_ObjectType t
GO
/****** Object:  View [dbo].[Class_Access_Xref]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Class_Access_Xref] AS
SELECT t.*
FROM t_Class_Access_Xref t
GO
/****** Object:  View [dbo].[Class_List]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Class_List] AS
SELECT t.*
FROM t_Class_List t
GO
/****** Object:  View [dbo].[Class_Security]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Class_Security] AS
SELECT t.*
FROM t_Class_Security t
GO
/****** Object:  View [dbo].[Configuration_Limit]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Configuration_Limit] AS
SELECT t.*
FROM t_Configuration_Limit t
GO
/****** Object:  View [dbo].[Congestion_Control]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Congestion_Control] AS
SELECT t.*
FROM t_Congestion_Control t
GO
/****** Object:  View [dbo].[Contact_Share_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Contact_Share_Group] AS
SELECT t.*
FROM t_Contact_Share_Group t
GO
/****** Object:  View [dbo].[Contact_Share_Group_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Contact_Share_Group_Member] AS
SELECT t.*
FROM t_Contact_Share_Group_Member t
GO
/****** Object:  View [dbo].[Contact_Share_Queue]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Contact_Share_Queue] AS
SELECT t.*
FROM t_Contact_Share_Queue t
GO
/****** Object:  View [dbo].[Contact_Share_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Contact_Share_Rule] AS
SELECT t.*
FROM t_Contact_Share_Rule t
GO
/****** Object:  View [dbo].[Customer_Definition]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Customer_Definition] AS
SELECT t.*
FROM t_Customer_Definition t
GO
/****** Object:  View [dbo].[Customer_Options]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Customer_Options] AS
SELECT t.*
FROM t_Customer_Options t
GO
/****** Object:  View [dbo].[Default_Call_Type]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Default_Call_Type] AS
SELECT t.*
FROM t_Default_Call_Type t
GO
/****** Object:  View [dbo].[Department]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Department] AS
SELECT t.*
FROM t_Department t
GO
/****** Object:  View [dbo].[Department_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Department_Member] AS
SELECT t.*
FROM t_Department_Member t
GO
/****** Object:  View [dbo].[Device_Target]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Device_Target] AS
SELECT t.*
FROM t_Device_Target t
GO
/****** Object:  View [dbo].[Dial_Number_Plan]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dial_Number_Plan] AS
SELECT t.*
FROM t_Dial_Number_Plan t
GO
/****** Object:  View [dbo].[Dialed_Number]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialed_Number] AS
SELECT t.*
FROM t_Dialed_Number t
GO
/****** Object:  View [dbo].[Dialed_Number_Label]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialed_Number_Label] AS
SELECT t.*
FROM t_Dialed_Number_Label t
GO
/****** Object:  View [dbo].[Dialed_Number_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialed_Number_Map] AS
SELECT t.*
FROM t_Dialed_Number_Map t
GO
/****** Object:  View [dbo].[Dialer]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialer] AS
SELECT t.*
FROM t_Dialer t
GO
/****** Object:  View [dbo].[Dialer_Detail]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialer_Detail] AS
SELECT t.*
FROM eu03_hds.dbo.Dialer_Detail t
GO
/****** Object:  View [dbo].[Dialer_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialer_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Dialer_Half_Hour t
GO
/****** Object:  View [dbo].[Dialer_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialer_Interval] AS
SELECT t.*
FROM eu03_hds.dbo.Dialer_Interval t
GO
/****** Object:  View [dbo].[Dialer_Port_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialer_Port_Map] AS
SELECT t.*
FROM t_Dialer_Port_Map t
GO
/****** Object:  View [dbo].[Dialer_Port_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialer_Port_Real_Time] AS
SELECT t.*
FROM t_Dialer_Port_Real_Time t
GO
/****** Object:  View [dbo].[Dialer_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialer_Real_Time] AS
SELECT t.*
FROM t_Dialer_Real_Time t
GO
/****** Object:  View [dbo].[Dialer_Skill_Group_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialer_Skill_Group_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Dialer_Skill_Group_Half_Hour t
GO
/****** Object:  View [dbo].[Dialer_Skill_Group_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Dialer_Skill_Group_Real_Time] AS
SELECT t.*
FROM t_Dialer_Skill_Group_Real_Time t
GO
/****** Object:  View [dbo].[ECC_Payload]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ECC_Payload] AS
SELECT t.*
FROM t_ECC_Payload t
GO
/****** Object:  View [dbo].[ECC_Payload_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ECC_Payload_Member] AS
SELECT t.*
FROM t_ECC_Payload_Member t
GO
/****** Object:  View [dbo].[Enterprise_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Enterprise_Route] AS
SELECT t.*
FROM t_Enterprise_Route t
GO
/****** Object:  View [dbo].[Enterprise_Route_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Enterprise_Route_Member] AS
SELECT t.*
FROM t_Enterprise_Route_Member t
GO
/****** Object:  View [dbo].[Enterprise_Service]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Enterprise_Service] AS
SELECT t.*
FROM t_Enterprise_Service t
GO
/****** Object:  View [dbo].[Enterprise_Service_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Enterprise_Service_Member] AS
SELECT t.*
FROM t_Enterprise_Service_Member t
GO
/****** Object:  View [dbo].[Enterprise_Skill_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Enterprise_Skill_Group] AS
SELECT t.*
FROM t_Enterprise_Skill_Group t
GO
/****** Object:  View [dbo].[Enterprise_Skill_Group_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Enterprise_Skill_Group_Member] AS
SELECT t.*
FROM t_Enterprise_Skill_Group_Membe t
GO
/****** Object:  View [dbo].[Event]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Event] AS
SELECT t.*
FROM eu03_hds.dbo.Event t
GO
/****** Object:  View [dbo].[Expanded_Call_Variable]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Expanded_Call_Variable] AS
SELECT t.*
FROM t_Expanded_Call_Variable t
GO
/****** Object:  View [dbo].[ICR_Instance]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ICR_Instance] AS
SELECT t.*
FROM t_ICR_Instance t
GO
/****** Object:  View [dbo].[ICR_Node]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ICR_Node] AS
SELECT t.*
FROM t_ICR_Node t
GO
/****** Object:  View [dbo].[Import_Log]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Import_Log] AS
SELECT t.*
FROM eu03_hds.dbo.Import_Log t
GO
/****** Object:  View [dbo].[Import_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Import_Rule] AS
SELECT t.*
FROM t_Import_Rule t
GO
/****** Object:  View [dbo].[Import_Rule_Clause]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Import_Rule_Clause] AS
SELECT t.*
FROM t_Import_Rule_Clause t
GO
/****** Object:  View [dbo].[Import_Rule_History]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Import_Rule_History] AS
SELECT t.*
FROM eu03_hds.dbo.Import_Rule_History t
GO
/****** Object:  View [dbo].[Import_Rule_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Import_Rule_Real_Time] AS
SELECT t.*
FROM t_Import_Rule_Real_Time t
GO
/****** Object:  View [dbo].[Import_Schedule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Import_Schedule] AS
SELECT t.*
FROM t_Import_Schedule t
GO
/****** Object:  View [dbo].[Intra_Day_Adherence]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Intra_Day_Adherence] (ScheduleID, DateTime, TimeZone, EGCODE, CTCODE, REQ, SCH, SCA)
AS select ScheduleID, DateTime, TimeZone, String1, String2, Double3, Double4, Double6
FROM t_Schedule_Import
GO
/****** Object:  View [dbo].[Intra_Day_Performance]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Intra_Day_Performance] (ScheduleID, DateTime, TimeZone, EGCODE, CTCODE, FCALLS, FAHT, REQ, SCH, SVQ)
AS SELECT ScheduleID, DateTime, TimeZone, String1, String2, Double1, Double2, Double3, Double4, Double5
FROM t_Schedule_Import
GO
/****** Object:  View [dbo].[Label]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Label] AS
SELECT t.*
FROM t_Label t
GO
/****** Object:  View [dbo].[License_File]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[License_File] AS
SELECT t.*
FROM t_License_File t
GO
/****** Object:  View [dbo].[License_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[License_Real_Time] AS
SELECT t.*
FROM t_License_Real_Time t
GO
/****** Object:  View [dbo].[Logger_Meters]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Logger_Meters] AS
SELECT t.*
FROM eu03_hds.dbo.Logger_Meters t
GO
/****** Object:  View [dbo].[Logical_Interface_Controller]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Logical_Interface_Controller] AS
SELECT t.*
FROM t_Logical_Interface_Controller t
GO
/****** Object:  View [dbo].[M_Business_Entity]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[M_Business_Entity] AS
SELECT t.*
FROM t_Business_Entity t
GO
/****** Object:  View [dbo].[M_Peripheral]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[M_Peripheral] AS
SELECT t.*
FROM t_Peripheral t
GO
/****** Object:  View [dbo].[M_Trunk_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[M_Trunk_Group] AS
SELECT t.*
FROM t_Trunk_Group t
GO
/****** Object:  View [dbo].[Machine_Address]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Machine_Address] AS
SELECT t.*
FROM t_Machine_Address t
GO
/****** Object:  View [dbo].[Machine_Connection_Profile]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Machine_Connection_Profile] AS
SELECT t.*
FROM t_Machine_Connection_Profile t
GO
/****** Object:  View [dbo].[Machine_Host]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Machine_Host] AS
SELECT t.*
FROM t_Machine_Host t
GO
/****** Object:  View [dbo].[Machine_Service]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Machine_Service] AS
SELECT t.*
FROM t_Machine_Service t
GO
/****** Object:  View [dbo].[Master_Script]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Master_Script] AS
SELECT t.*
FROM t_Master_Script t
GO
/****** Object:  View [dbo].[Media_Class]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Media_Class] AS
SELECT t.*
FROM t_Media_Class t
GO
/****** Object:  View [dbo].[Media_Routing_Domain]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Media_Routing_Domain] AS
SELECT t.*
FROM t_Media_Routing_Domain t
GO
/****** Object:  View [dbo].[NIC_Parameter]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[NIC_Parameter] AS
SELECT t.*
FROM t_NIC_Parameter t
GO
/****** Object:  View [dbo].[Network_Event_Detail]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Network_Event_Detail] AS
SELECT t.*
FROM eu03_hds.dbo.Network_Event_Detail t
GO
/****** Object:  View [dbo].[Network_Trunk_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Network_Trunk_Group] AS
SELECT t.*
FROM t_Network_Trunk_Group t
GO
/****** Object:  View [dbo].[Network_Trunk_Group_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Network_Trunk_Group_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Network_Trunk_Group_Half_Hour t
GO
/****** Object:  View [dbo].[Network_Trunk_Group_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Network_Trunk_Group_Real_Time] AS
SELECT t.*
FROM t_Network_Trunk_Group_Real_Tim t
GO
/****** Object:  View [dbo].[Network_Vru]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Network_Vru] AS
SELECT t.*
FROM t_Network_Vru t
GO
/****** Object:  View [dbo].[Network_Vru_Bank]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Network_Vru_Bank] AS
SELECT t.*
FROM t_Network_Vru_Bank t
GO
/****** Object:  View [dbo].[Network_Vru_Script]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Network_Vru_Script] AS
SELECT t.*
FROM t_Network_Vru_Script t
GO
/****** Object:  View [dbo].[Object_Access_Xref]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Object_Access_Xref] AS
SELECT t.*
FROM t_Object_Access_Xref t
GO
/****** Object:  View [dbo].[Object_List]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Object_List] AS
SELECT t.*
FROM t_Object_List t
GO
/****** Object:  View [dbo].[Object_Security]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Object_Security] AS
SELECT t.*
FROM t_Object_Security t
GO
/****** Object:  View [dbo].[Peripheral]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Peripheral] AS
SELECT t.*
FROM t_Peripheral t
GO
/****** Object:  View [dbo].[Peripheral_Default_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Peripheral_Default_Route] AS
SELECT t.*
FROM t_Peripheral_Default_Route t
GO
/****** Object:  View [dbo].[Peripheral_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Peripheral_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Peripheral_Half_Hour t
GO
/****** Object:  View [dbo].[Peripheral_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Peripheral_Interval] AS
SELECT t.*
FROM eu03_hds.dbo.Peripheral_Interval t
GO
/****** Object:  View [dbo].[Peripheral_Monitor]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Peripheral_Monitor] AS
SELECT t.*
FROM t_Peripheral_Monitor t
GO
/****** Object:  View [dbo].[Peripheral_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Peripheral_Real_Time] AS
SELECT t.*
FROM t_Peripheral_Real_Time t
GO
/****** Object:  View [dbo].[Peripheral_Target]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Peripheral_Target] AS
SELECT t.*
FROM t_Peripheral_Target t
GO
/****** Object:  View [dbo].[Persistent_Variable]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Persistent_Variable] AS
SELECT t.*
FROM eu03_hds.dbo.Persistent_Variable t
GO
/****** Object:  View [dbo].[Person]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Person] AS
SELECT t.*
FROM t_Person t
GO
/****** Object:  View [dbo].[Phone_Strategy]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Phone_Strategy] AS
SELECT t.*
FROM t_Phone_Strategy t
GO
/****** Object:  View [dbo].[Phone_Strategy_Node]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Phone_Strategy_Node] AS
SELECT t.*
FROM t_Phone_Strategy_Node t
GO
/****** Object:  View [dbo].[Physical_Controller_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Physical_Controller_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Physical_Controller_Half_Hour t
GO
/****** Object:  View [dbo].[Physical_Interface_Controller]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Physical_Interface_Controller] AS
SELECT t.*
FROM t_Physical_Interface_Controlle t
GO
/****** Object:  View [dbo].[Precision_Q_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Precision_Q_Real_Time] AS
SELECT t.*
FROM t_Precision_Q_Real_Time t
GO
/****** Object:  View [dbo].[Precision_Q_Step_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Precision_Q_Step_Real_Time] AS
SELECT t.*
FROM t_Precision_Q_Step_Real_Time t
GO
/****** Object:  View [dbo].[Precision_Queue]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Precision_Queue] AS
SELECT t.*
FROM t_Precision_Queue t
GO
/****** Object:  View [dbo].[Precision_Queue_Step]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Precision_Queue_Step] AS
SELECT t.*
FROM t_Precision_Queue_Step t
GO
/****** Object:  View [dbo].[Precision_Queue_Term]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Precision_Queue_Term] AS
SELECT t.*
FROM t_Precision_Queue_Term t
GO
/****** Object:  View [dbo].[Query_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Query_Rule] AS
SELECT t.*
FROM t_Query_Rule t
GO
/****** Object:  View [dbo].[Query_Rule_Clause]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Query_Rule_Clause] AS
SELECT t.*
FROM t_Query_Rule_Clause t
GO
/****** Object:  View [dbo].[Reason_Code]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Reason_Code] AS
SELECT t.*
FROM t_Reason_Code t
GO
/****** Object:  View [dbo].[Recurring_Schedule_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Recurring_Schedule_Map] AS
SELECT t.*
FROM t_Recurring_Schedule_Map t
GO
/****** Object:  View [dbo].[Ref_Admin_Script_Schedule_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Admin_Script_Schedule_Map] AS
SELECT t.*
FROM t_Admin_Script_Schedule_Map t
GO
/****** Object:  View [dbo].[Ref_Agent]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Agent] AS
SELECT t.*
FROM t_Agent t
GO
/****** Object:  View [dbo].[Ref_Agent_Attribute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Agent_Attribute] AS
SELECT t.*
FROM t_Agent_Attribute t
GO
/****** Object:  View [dbo].[Ref_Agent_Desk_Settings]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Agent_Desk_Settings] AS
SELECT t.*
FROM t_Agent_Desk_Settings t
GO
/****** Object:  View [dbo].[Ref_Agent_Distribution]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Agent_Distribution] AS
SELECT t.*
FROM t_Agent_Distribution t
GO
/****** Object:  View [dbo].[Ref_Agent_Targeting_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Agent_Targeting_Rule] AS
SELECT t.*
FROM t_Agent_Targeting_Rule t
GO
/****** Object:  View [dbo].[Ref_Agent_Team]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Agent_Team] AS
SELECT t.*
FROM t_Agent_Team t
GO
/****** Object:  View [dbo].[Ref_Agent_Team_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Agent_Team_Member] AS
SELECT t.*
FROM t_Agent_Team_Member t
GO
/****** Object:  View [dbo].[Ref_Agent_Team_Supervisor]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Agent_Team_Supervisor] AS
SELECT t.*
FROM t_Agent_Team_Supervisor t
GO
/****** Object:  View [dbo].[Ref_Announcement]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Announcement] AS
SELECT t.*
FROM t_Announcement t
GO
/****** Object:  View [dbo].[Ref_Application_Gateway]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Application_Gateway] AS
SELECT t.*
FROM t_Application_Gateway t
GO
/****** Object:  View [dbo].[Ref_Application_Gateway_Connec]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Application_Gateway_Connec] AS
SELECT t.*
FROM t_Application_Gateway_Connecti t
GO
/****** Object:  View [dbo].[Ref_Application_Gateway_Global]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Application_Gateway_Global] AS
SELECT t.*
FROM t_Application_Gateway_Globals t
GO
/****** Object:  View [dbo].[Ref_Application_Gateway_Licens]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Application_Gateway_Licens] AS
SELECT t.*
FROM t_Application_Gateway_License t
GO
/****** Object:  View [dbo].[Ref_Application_Instance]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Application_Instance] AS
SELECT t.*
FROM t_Application_Instance t
GO
/****** Object:  View [dbo].[Ref_Application_Path]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Application_Path] AS
SELECT t.*
FROM t_Application_Path t
GO
/****** Object:  View [dbo].[Ref_Application_Path_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Application_Path_Member] AS
SELECT t.*
FROM t_Application_Path_Member t
GO
/****** Object:  View [dbo].[Ref_Attribute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Attribute] AS
SELECT t.*
FROM t_Attribute t
GO
/****** Object:  View [dbo].[Ref_Attribute_Set]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Attribute_Set] AS
SELECT t.*
FROM t_Attribute_Set t
GO
/****** Object:  View [dbo].[Ref_Attribute_Set_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Attribute_Set_Member] AS
SELECT t.*
FROM t_Attribute_Set_Member t
GO
/****** Object:  View [dbo].[Ref_Bucket_Intervals]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Bucket_Intervals] AS
SELECT t.*
FROM t_Bucket_Intervals t
GO
/****** Object:  View [dbo].[Ref_Bulk_Job]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Bulk_Job] AS
SELECT t.*
FROM t_Bulk_Job t
GO
/****** Object:  View [dbo].[Ref_Business_Entity]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Business_Entity] AS
SELECT t.*
FROM t_Business_Entity t
GO
/****** Object:  View [dbo].[Ref_Call_Type]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Call_Type] AS
SELECT t.*
FROM t_Call_Type t
GO
/****** Object:  View [dbo].[Ref_Call_Type_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Call_Type_Map] AS
SELECT t.*
FROM t_Call_Type_Map t
GO
/****** Object:  View [dbo].[Ref_Campaign]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Campaign] AS
SELECT t.*
FROM t_Campaign t
GO
/****** Object:  View [dbo].[Ref_Campaign_Query_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Campaign_Query_Rule] AS
SELECT t.*
FROM t_Campaign_Query_Rule t
GO
/****** Object:  View [dbo].[Ref_Campaign_Skill_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Campaign_Skill_Group] AS
SELECT t.*
FROM t_Campaign_Skill_Group t
GO
/****** Object:  View [dbo].[Ref_Campaign_Target_Sequence]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Campaign_Target_Sequence] AS
SELECT t.*
FROM t_Campaign_Target_Sequence t
GO
/****** Object:  View [dbo].[Ref_Class_Security]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Class_Security] AS
SELECT t.*
FROM t_Class_Security t
GO
/****** Object:  View [dbo].[Ref_Configuration_Limit]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Configuration_Limit] AS
SELECT t.*
FROM t_Configuration_Limit t
GO
/****** Object:  View [dbo].[Ref_Congestion_Control]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Congestion_Control] AS
SELECT t.*
FROM t_Congestion_Control t
GO
/****** Object:  View [dbo].[Ref_Contact_Share_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Contact_Share_Group] AS
SELECT t.*
FROM t_Contact_Share_Group t
GO
/****** Object:  View [dbo].[Ref_Contact_Share_Group_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Contact_Share_Group_Member] AS
SELECT t.*
FROM t_Contact_Share_Group_Member t
GO
/****** Object:  View [dbo].[Ref_Contact_Share_Queue]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Contact_Share_Queue] AS
SELECT t.*
FROM t_Contact_Share_Queue t
GO
/****** Object:  View [dbo].[Ref_Contact_Share_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Contact_Share_Rule] AS
SELECT t.*
FROM t_Contact_Share_Rule t
GO
/****** Object:  View [dbo].[Ref_Customer_Definition]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Customer_Definition] AS
SELECT t.*
FROM t_Customer_Definition t
GO
/****** Object:  View [dbo].[Ref_Customer_Options]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Customer_Options] AS
SELECT t.*
FROM t_Customer_Options t
GO
/****** Object:  View [dbo].[Ref_Default_Call_Type]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Default_Call_Type] AS
SELECT t.*
FROM t_Default_Call_Type t
GO
/****** Object:  View [dbo].[Ref_Department]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Department] AS
SELECT t.*
FROM t_Department t
GO
/****** Object:  View [dbo].[Ref_Department_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Department_Member] AS
SELECT t.*
FROM t_Department_Member t
GO
/****** Object:  View [dbo].[Ref_Device_Target]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Device_Target] AS
SELECT t.*
FROM t_Device_Target t
GO
/****** Object:  View [dbo].[Ref_Dial_Number_Plan]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Dial_Number_Plan] AS
SELECT t.*
FROM t_Dial_Number_Plan t
GO
/****** Object:  View [dbo].[Ref_Dialed_Number]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Dialed_Number] AS
SELECT t.*
FROM t_Dialed_Number t
GO
/****** Object:  View [dbo].[Ref_Dialed_Number_Label]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Dialed_Number_Label] AS
SELECT t.*
FROM t_Dialed_Number_Label t
GO
/****** Object:  View [dbo].[Ref_Dialed_Number_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Dialed_Number_Map] AS
SELECT t.*
FROM t_Dialed_Number_Map t
GO
/****** Object:  View [dbo].[Ref_Dialer]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Dialer] AS
SELECT t.*
FROM t_Dialer t
GO
/****** Object:  View [dbo].[Ref_Dialer_Port_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Dialer_Port_Map] AS
SELECT t.*
FROM t_Dialer_Port_Map t
GO
/****** Object:  View [dbo].[Ref_ECC_Payload]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_ECC_Payload] AS
SELECT t.*
FROM t_ECC_Payload t
GO
/****** Object:  View [dbo].[Ref_ECC_Payload_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_ECC_Payload_Member] AS
SELECT t.*
FROM t_ECC_Payload_Member t
GO
/****** Object:  View [dbo].[Ref_Enterprise_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Enterprise_Route] AS
SELECT t.*
FROM t_Enterprise_Route t
GO
/****** Object:  View [dbo].[Ref_Enterprise_Route_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Enterprise_Route_Member] AS
SELECT t.*
FROM t_Enterprise_Route_Member t
GO
/****** Object:  View [dbo].[Ref_Enterprise_Service]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Enterprise_Service] AS
SELECT t.*
FROM t_Enterprise_Service t
GO
/****** Object:  View [dbo].[Ref_Enterprise_Service_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Enterprise_Service_Member] AS
SELECT t.*
FROM t_Enterprise_Service_Member t
GO
/****** Object:  View [dbo].[Ref_Enterprise_Skill_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Enterprise_Skill_Group] AS
SELECT t.*
FROM t_Enterprise_Skill_Group t
GO
/****** Object:  View [dbo].[Ref_Enterprise_Skill_Group_Mem]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Enterprise_Skill_Group_Mem] AS
SELECT t.*
FROM t_Enterprise_Skill_Group_Membe t
GO
/****** Object:  View [dbo].[Ref_Expanded_Call_Variable]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Expanded_Call_Variable] AS
SELECT t.*
FROM t_Expanded_Call_Variable t
GO
/****** Object:  View [dbo].[Ref_ICR_Instance]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_ICR_Instance] AS
SELECT t.*
FROM t_ICR_Instance t
GO
/****** Object:  View [dbo].[Ref_ICR_Node]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_ICR_Node] AS
SELECT t.*
FROM t_ICR_Node t
GO
/****** Object:  View [dbo].[Ref_Import_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Import_Rule] AS
SELECT t.*
FROM t_Import_Rule t
GO
/****** Object:  View [dbo].[Ref_Import_Rule_Clause]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Import_Rule_Clause] AS
SELECT t.*
FROM t_Import_Rule_Clause t
GO
/****** Object:  View [dbo].[Ref_Import_Schedule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Import_Schedule] AS
SELECT t.*
FROM t_Import_Schedule t
GO
/****** Object:  View [dbo].[Ref_Label]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Label] AS
SELECT t.*
FROM t_Label t
GO
/****** Object:  View [dbo].[Ref_License_File]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_License_File] AS
SELECT t.*
FROM t_License_File t
GO
/****** Object:  View [dbo].[Ref_Logical_Interface_Controll]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Logical_Interface_Controll] AS
SELECT t.*
FROM t_Logical_Interface_Controller t
GO
/****** Object:  View [dbo].[Ref_Machine_Address]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Machine_Address] AS
SELECT t.*
FROM t_Machine_Address t
GO
/****** Object:  View [dbo].[Ref_Machine_Connection_Profile]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Machine_Connection_Profile] AS
SELECT t.*
FROM t_Machine_Connection_Profile t
GO
/****** Object:  View [dbo].[Ref_Machine_Host]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Machine_Host] AS
SELECT t.*
FROM t_Machine_Host t
GO
/****** Object:  View [dbo].[Ref_Machine_Service]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Machine_Service] AS
SELECT t.*
FROM t_Machine_Service t
GO
/****** Object:  View [dbo].[Ref_Master_Script]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Master_Script] AS
SELECT t.*
FROM t_Master_Script t
GO
/****** Object:  View [dbo].[Ref_Media_Class]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Media_Class] AS
SELECT t.*
FROM t_Media_Class t
GO
/****** Object:  View [dbo].[Ref_Media_Routing_Domain]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Media_Routing_Domain] AS
SELECT t.*
FROM t_Media_Routing_Domain t
GO
/****** Object:  View [dbo].[Ref_NIC_Parameter]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_NIC_Parameter] AS
SELECT t.*
FROM t_NIC_Parameter t
GO
/****** Object:  View [dbo].[Ref_Network_Trunk_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Network_Trunk_Group] AS
SELECT t.*
FROM t_Network_Trunk_Group t
GO
/****** Object:  View [dbo].[Ref_Network_Vru]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Network_Vru] AS
SELECT t.*
FROM t_Network_Vru t
GO
/****** Object:  View [dbo].[Ref_Network_Vru_Bank]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Network_Vru_Bank] AS
SELECT t.*
FROM t_Network_Vru_Bank t
GO
/****** Object:  View [dbo].[Ref_Network_Vru_Script]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Network_Vru_Script] AS
SELECT t.*
FROM t_Network_Vru_Script t
GO
/****** Object:  View [dbo].[Ref_Object_Security]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Object_Security] AS
SELECT t.*
FROM t_Object_Security t
GO
/****** Object:  View [dbo].[Ref_Peripheral]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Peripheral] AS
SELECT t.*
FROM t_Peripheral t
GO
/****** Object:  View [dbo].[Ref_Peripheral_Default_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Peripheral_Default_Route] AS
SELECT t.*
FROM t_Peripheral_Default_Route t
GO
/****** Object:  View [dbo].[Ref_Peripheral_Monitor]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Peripheral_Monitor] AS
SELECT t.*
FROM t_Peripheral_Monitor t
GO
/****** Object:  View [dbo].[Ref_Peripheral_Target]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Peripheral_Target] AS
SELECT t.*
FROM t_Peripheral_Target t
GO
/****** Object:  View [dbo].[Ref_Person]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Person] AS
SELECT t.*
FROM t_Person t
GO
/****** Object:  View [dbo].[Ref_Phone_Strategy]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Phone_Strategy] AS
SELECT t.*
FROM t_Phone_Strategy t
GO
/****** Object:  View [dbo].[Ref_Phone_Strategy_Node]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Phone_Strategy_Node] AS
SELECT t.*
FROM t_Phone_Strategy_Node t
GO
/****** Object:  View [dbo].[Ref_Physical_Interface_Control]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Physical_Interface_Control] AS
SELECT t.*
FROM t_Physical_Interface_Controlle t
GO
/****** Object:  View [dbo].[Ref_Precision_Queue]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Precision_Queue] AS
SELECT t.*
FROM t_Precision_Queue t
GO
/****** Object:  View [dbo].[Ref_Precision_Queue_Step]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Precision_Queue_Step] AS
SELECT t.*
FROM t_Precision_Queue_Step t
GO
/****** Object:  View [dbo].[Ref_Precision_Queue_Term]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Precision_Queue_Term] AS
SELECT t.*
FROM t_Precision_Queue_Term t
GO
/****** Object:  View [dbo].[Ref_Query_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Query_Rule] AS
SELECT t.*
FROM t_Query_Rule t
GO
/****** Object:  View [dbo].[Ref_Query_Rule_Clause]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Query_Rule_Clause] AS
SELECT t.*
FROM t_Query_Rule_Clause t
GO
/****** Object:  View [dbo].[Ref_Reason_Code]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Reason_Code] AS
SELECT t.*
FROM t_Reason_Code t
GO
/****** Object:  View [dbo].[Ref_Recurring_Schedule_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Recurring_Schedule_Map] AS
SELECT t.*
FROM t_Recurring_Schedule_Map t
GO
/****** Object:  View [dbo].[Ref_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Route] AS
SELECT t.*
FROM t_Route t
GO
/****** Object:  View [dbo].[Ref_Routing_Client]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Routing_Client] AS
SELECT t.*
FROM t_Routing_Client t
GO
/****** Object:  View [dbo].[Ref_Schedule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Schedule] AS
SELECT t.*
FROM t_Schedule t
GO
/****** Object:  View [dbo].[Ref_Schedule_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Schedule_Map] AS
SELECT t.*
FROM t_Schedule_Map t
GO
/****** Object:  View [dbo].[Ref_Schedule_Report]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Schedule_Report] AS
SELECT t.*
FROM t_Schedule_Report t
GO
/****** Object:  View [dbo].[Ref_Schedule_Report_Input]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Schedule_Report_Input] AS
SELECT t.*
FROM t_Schedule_Report_Input t
GO
/****** Object:  View [dbo].[Ref_Schedule_Source]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Schedule_Source] AS
SELECT t.*
FROM t_Schedule_Source t
GO
/****** Object:  View [dbo].[Ref_Scheduled_Target]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Scheduled_Target] AS
SELECT t.*
FROM t_Scheduled_Target t
GO
/****** Object:  View [dbo].[Ref_Script]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Script] AS
SELECT t.*
FROM t_Script t
GO
/****** Object:  View [dbo].[Ref_Script_Cross_Reference]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Script_Cross_Reference] AS
SELECT t.*
FROM t_Script_Cross_Reference t
GO
/****** Object:  View [dbo].[Ref_Script_Data]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Script_Data] AS
SELECT t.*
FROM t_Script_Data t
GO
/****** Object:  View [dbo].[Ref_Script_Print_Control]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Script_Print_Control] AS
SELECT t.*
FROM t_Script_Print_Control t
GO
/****** Object:  View [dbo].[Ref_Script_Table]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Script_Table] AS
SELECT t.*
FROM t_Script_Table t
GO
/****** Object:  View [dbo].[Ref_Script_Table_Column]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Script_Table_Column] AS
SELECT t.*
FROM t_Script_Table_Column t
GO
/****** Object:  View [dbo].[Ref_Service]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Service] AS
SELECT t.*
FROM t_Service t
GO
/****** Object:  View [dbo].[Ref_Service_Array]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Service_Array] AS
SELECT t.*
FROM t_Service_Array t
GO
/****** Object:  View [dbo].[Ref_Service_Array_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Service_Array_Member] AS
SELECT t.*
FROM t_Service_Array_Member t
GO
/****** Object:  View [dbo].[Ref_Service_Level_Threshold]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Service_Level_Threshold] AS
SELECT t.*
FROM t_Service_Level_Threshold t
GO
/****** Object:  View [dbo].[Ref_Service_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Service_Member] AS
SELECT t.*
FROM t_Service_Member t
GO
/****** Object:  View [dbo].[Ref_Skill_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Skill_Group] AS
SELECT t.*
FROM t_Skill_Group t
GO
/****** Object:  View [dbo].[Ref_Skill_Group_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Skill_Group_Member] AS
SELECT t.*
FROM t_Skill_Group_Member t
GO
/****** Object:  View [dbo].[Ref_System_Attribute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_System_Attribute] AS
SELECT t.*
FROM t_System_Attribute t
GO
/****** Object:  View [dbo].[Ref_Translation_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Translation_Route] AS
SELECT t.*
FROM t_Translation_Route t
GO
/****** Object:  View [dbo].[Ref_Trunk]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Trunk] AS
SELECT t.*
FROM t_Trunk t
GO
/****** Object:  View [dbo].[Ref_Trunk_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Trunk_Group] AS
SELECT t.*
FROM t_Trunk_Group t
GO
/****** Object:  View [dbo].[Ref_User_Formula]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_User_Formula] AS
SELECT t.*
FROM t_User_Formula t
GO
/****** Object:  View [dbo].[Ref_User_Formula_Equation]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_User_Formula_Equation] AS
SELECT t.*
FROM t_User_Formula_Equation t
GO
/****** Object:  View [dbo].[Ref_User_Variable]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_User_Variable] AS
SELECT t.*
FROM t_User_Variable t
GO
/****** Object:  View [dbo].[Ref_Vru_Port_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Ref_Vru_Port_Map] AS
SELECT t.*
FROM t_Vru_Port_Map t
GO
/****** Object:  View [dbo].[Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Route] AS
SELECT t.*
FROM t_Route t
GO
/****** Object:  View [dbo].[Route_Call_Detail]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Route_Call_Detail] AS
SELECT t.*
FROM eu03_hds.dbo.Route_Call_Detail t
GO
/****** Object:  View [dbo].[Route_Call_Variable]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Route_Call_Variable] AS
SELECT t.*
FROM eu03_hds.dbo.Route_Call_Variable t
GO
/****** Object:  View [dbo].[Route_Five_Minute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Route_Five_Minute] AS
SELECT t.*
FROM eu03_hds.dbo.Route_Five_Minute t
GO
/****** Object:  View [dbo].[Route_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Route_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Route_Half_Hour t
GO
/****** Object:  View [dbo].[Route_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Route_Real_Time] AS
SELECT t.*
FROM t_Route_Real_Time t
GO
/****** Object:  View [dbo].[Router_Queue_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Router_Queue_Interval] AS
SELECT t.*
FROM eu03_hds.dbo.Router_Queue_Interval t
GO
/****** Object:  View [dbo].[Routing_Client]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Routing_Client] AS
SELECT t.*
FROM t_Routing_Client t
GO
/****** Object:  View [dbo].[Routing_Client_Five_Minute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Routing_Client_Five_Minute] AS
SELECT t.*
FROM eu03_hds.dbo.Routing_Client_Five_Minute t
GO
/****** Object:  View [dbo].[Schedule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Schedule] AS
SELECT t.*
FROM t_Schedule t
GO
/****** Object:  View [dbo].[Schedule_Import]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Schedule_Import] AS
SELECT t.*
FROM eu03_hds.dbo.Schedule_Import t
GO
/****** Object:  View [dbo].[Schedule_Import_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Schedule_Import_Real_Time] AS
SELECT t.*
FROM t_Schedule_Import_Real_Time t
GO
/****** Object:  View [dbo].[Schedule_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Schedule_Map] AS
SELECT t.*
FROM t_Schedule_Map t
GO
/****** Object:  View [dbo].[Schedule_Report]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Schedule_Report] AS
SELECT t.*
FROM t_Schedule_Report t
GO
/****** Object:  View [dbo].[Schedule_Report_Input]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Schedule_Report_Input] AS
SELECT t.*
FROM t_Schedule_Report_Input t
GO
/****** Object:  View [dbo].[Schedule_Source]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Schedule_Source] AS
SELECT t.*
FROM t_Schedule_Source t
GO
/****** Object:  View [dbo].[Scheduled_Target]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Scheduled_Target] AS
SELECT t.*
FROM t_Scheduled_Target t
GO
/****** Object:  View [dbo].[Scheduled_Target_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Scheduled_Target_Real_Time] AS
SELECT t.*
FROM t_Scheduled_Target_Real_Time t
GO
/****** Object:  View [dbo].[Script]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Script] AS
SELECT t.*
FROM t_Script t
GO
/****** Object:  View [dbo].[Script_Cross_Reference]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Script_Cross_Reference] AS
SELECT t.*
FROM t_Script_Cross_Reference t
GO
/****** Object:  View [dbo].[Script_Data]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Script_Data] AS
SELECT t.*
FROM t_Script_Data t
GO
/****** Object:  View [dbo].[Script_Five_Minute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Script_Five_Minute] AS
SELECT t.*
FROM eu03_hds.dbo.Script_Five_Minute t
GO
/****** Object:  View [dbo].[Script_Print_Control]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Script_Print_Control] AS
SELECT t.*
FROM t_Script_Print_Control t
GO
/****** Object:  View [dbo].[Script_Queue_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Script_Queue_Real_Time] AS
SELECT t.*
FROM t_Script_Queue_Real_Time t
GO
/****** Object:  View [dbo].[Script_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Script_Real_Time] AS
SELECT t.*
FROM t_Script_Real_Time t
GO
/****** Object:  View [dbo].[Script_Table]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Script_Table] AS
SELECT t.*
FROM t_Script_Table t
GO
/****** Object:  View [dbo].[Script_Table_Column]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Script_Table_Column] AS
SELECT t.*
FROM t_Script_Table_Column t
GO
/****** Object:  View [dbo].[Sec_Admin_Script_Schedule_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Admin_Script_Schedule_Map] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Admin_Script_Schedule_Map t
GO
/****** Object:  View [dbo].[Sec_Agent]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Agent] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Agent t
GO
/****** Object:  View [dbo].[Sec_Agent_Attribute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Agent_Attribute] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Agent_Attribute t
GO
/****** Object:  View [dbo].[Sec_Agent_Desk_Settings]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Agent_Desk_Settings] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Agent_Desk_Settings t
GO
/****** Object:  View [dbo].[Sec_Agent_Distribution]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Agent_Distribution] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Agent_Distribution t
GO
/****** Object:  View [dbo].[Sec_Agent_Targeting_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Agent_Targeting_Rule] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Agent_Targeting_Rule t
GO
/****** Object:  View [dbo].[Sec_Agent_Team]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Agent_Team] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Agent_Team t
GO
/****** Object:  View [dbo].[Sec_Agent_Team_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Agent_Team_Member] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Agent_Team_Member t
GO
/****** Object:  View [dbo].[Sec_Agent_Team_Supervisor]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Agent_Team_Supervisor] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Agent_Team_Supervisor t
GO
/****** Object:  View [dbo].[Sec_Announcement]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Announcement] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Announcement t
GO
/****** Object:  View [dbo].[Sec_Application_Gateway]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Application_Gateway] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Application_Gateway t
GO
/****** Object:  View [dbo].[Sec_Application_Gateway_Connec]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Application_Gateway_Connec] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Application_Gateway_Connecti t
GO
/****** Object:  View [dbo].[Sec_Application_Gateway_Global]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Application_Gateway_Global] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Application_Gateway_Globals t
GO
/****** Object:  View [dbo].[Sec_Application_Gateway_Licens]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Application_Gateway_Licens] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Application_Gateway_License t
GO
/****** Object:  View [dbo].[Sec_Application_Instance]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Application_Instance] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Application_Instance t
GO
/****** Object:  View [dbo].[Sec_Application_Path]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Application_Path] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Application_Path t
GO
/****** Object:  View [dbo].[Sec_Application_Path_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Application_Path_Member] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Application_Path_Member t
GO
/****** Object:  View [dbo].[Sec_Attribute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Attribute] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Attribute t
GO
/****** Object:  View [dbo].[Sec_Attribute_Set]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Attribute_Set] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Attribute_Set t
GO
/****** Object:  View [dbo].[Sec_Attribute_Set_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Attribute_Set_Member] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Attribute_Set_Member t
GO
/****** Object:  View [dbo].[Sec_Bucket_Intervals]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Bucket_Intervals] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Bucket_Intervals t
GO
/****** Object:  View [dbo].[Sec_Bulk_Job]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Bulk_Job] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Bulk_Job t
GO
/****** Object:  View [dbo].[Sec_Business_Entity]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Business_Entity] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Business_Entity t
GO
/****** Object:  View [dbo].[Sec_Call_Type]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Call_Type] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Call_Type t
GO
/****** Object:  View [dbo].[Sec_Call_Type_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Call_Type_Map] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Call_Type_Map t
GO
/****** Object:  View [dbo].[Sec_Campaign]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Campaign] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Campaign t
GO
/****** Object:  View [dbo].[Sec_Campaign_Query_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Campaign_Query_Rule] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Campaign_Query_Rule t
GO
/****** Object:  View [dbo].[Sec_Campaign_Skill_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Campaign_Skill_Group] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Campaign_Skill_Group t
GO
/****** Object:  View [dbo].[Sec_Campaign_Target_Sequence]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Campaign_Target_Sequence] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Campaign_Target_Sequence t
GO
/****** Object:  View [dbo].[Sec_Class_Security]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Class_Security] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Class_Security t
GO
/****** Object:  View [dbo].[Sec_Configuration_Limit]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Configuration_Limit] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Configuration_Limit t
GO
/****** Object:  View [dbo].[Sec_Congestion_Control]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Congestion_Control] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Congestion_Control t
GO
/****** Object:  View [dbo].[Sec_Contact_Share_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Contact_Share_Group] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Contact_Share_Group t
GO
/****** Object:  View [dbo].[Sec_Contact_Share_Group_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Contact_Share_Group_Member] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Contact_Share_Group_Member t
GO
/****** Object:  View [dbo].[Sec_Contact_Share_Queue]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Contact_Share_Queue] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Contact_Share_Queue t
GO
/****** Object:  View [dbo].[Sec_Contact_Share_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Contact_Share_Rule] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Contact_Share_Rule t
GO
/****** Object:  View [dbo].[Sec_Customer_Definition]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Customer_Definition] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Customer_Definition t
GO
/****** Object:  View [dbo].[Sec_Customer_Options]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Customer_Options] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Customer_Options t
GO
/****** Object:  View [dbo].[Sec_Default_Call_Type]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Default_Call_Type] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Default_Call_Type t
GO
/****** Object:  View [dbo].[Sec_Department]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Department] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Department t
GO
/****** Object:  View [dbo].[Sec_Department_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Department_Member] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Department_Member t
GO
/****** Object:  View [dbo].[Sec_Device_Target]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Device_Target] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Device_Target t
GO
/****** Object:  View [dbo].[Sec_Dial_Number_Plan]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Dial_Number_Plan] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Dial_Number_Plan t
GO
/****** Object:  View [dbo].[Sec_Dialed_Number]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Dialed_Number] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Dialed_Number t
GO
/****** Object:  View [dbo].[Sec_Dialed_Number_Label]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Dialed_Number_Label] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Dialed_Number_Label t
GO
/****** Object:  View [dbo].[Sec_Dialed_Number_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Dialed_Number_Map] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Dialed_Number_Map t
GO
/****** Object:  View [dbo].[Sec_Dialer]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Dialer] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Dialer t
GO
/****** Object:  View [dbo].[Sec_Dialer_Port_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Dialer_Port_Map] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Dialer_Port_Map t
GO
/****** Object:  View [dbo].[Sec_ECC_Payload]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_ECC_Payload] AS
SELECT t.*, Object_Access_Level = 30
FROM t_ECC_Payload t
GO
/****** Object:  View [dbo].[Sec_ECC_Payload_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_ECC_Payload_Member] AS
SELECT t.*, Object_Access_Level = 30
FROM t_ECC_Payload_Member t
GO
/****** Object:  View [dbo].[Sec_Enterprise_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Enterprise_Route] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Enterprise_Route t
GO
/****** Object:  View [dbo].[Sec_Enterprise_Route_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Enterprise_Route_Member] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Enterprise_Route_Member t
GO
/****** Object:  View [dbo].[Sec_Enterprise_Service]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Enterprise_Service] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Enterprise_Service t
GO
/****** Object:  View [dbo].[Sec_Enterprise_Service_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Enterprise_Service_Member] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Enterprise_Service_Member t
GO
/****** Object:  View [dbo].[Sec_Enterprise_Skill_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Enterprise_Skill_Group] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Enterprise_Skill_Group t
GO
/****** Object:  View [dbo].[Sec_Enterprise_Skill_Group_Mem]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Enterprise_Skill_Group_Mem] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Enterprise_Skill_Group_Membe t
GO
/****** Object:  View [dbo].[Sec_Expanded_Call_Variable]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Expanded_Call_Variable] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Expanded_Call_Variable t
GO
/****** Object:  View [dbo].[Sec_ICR_Instance]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_ICR_Instance] AS
SELECT t.*, Object_Access_Level = 30
FROM t_ICR_Instance t
GO
/****** Object:  View [dbo].[Sec_ICR_Node]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_ICR_Node] AS
SELECT t.*, Object_Access_Level = 30
FROM t_ICR_Node t
GO
/****** Object:  View [dbo].[Sec_Import_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Import_Rule] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Import_Rule t
GO
/****** Object:  View [dbo].[Sec_Import_Rule_Clause]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Import_Rule_Clause] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Import_Rule_Clause t
GO
/****** Object:  View [dbo].[Sec_Import_Schedule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Import_Schedule] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Import_Schedule t
GO
/****** Object:  View [dbo].[Sec_Label]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Label] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Label t
GO
/****** Object:  View [dbo].[Sec_License_File]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_License_File] AS
SELECT t.*, Object_Access_Level = 30
FROM t_License_File t
GO
/****** Object:  View [dbo].[Sec_Logical_Interface_Controll]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Logical_Interface_Controll] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Logical_Interface_Controller t
GO
/****** Object:  View [dbo].[Sec_Machine_Address]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Machine_Address] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Machine_Address t
GO
/****** Object:  View [dbo].[Sec_Machine_Connection_Profile]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Machine_Connection_Profile] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Machine_Connection_Profile t
GO
/****** Object:  View [dbo].[Sec_Machine_Host]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Machine_Host] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Machine_Host t
GO
/****** Object:  View [dbo].[Sec_Machine_Service]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Machine_Service] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Machine_Service t
GO
/****** Object:  View [dbo].[Sec_Master_Script]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Master_Script] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Master_Script t
GO
/****** Object:  View [dbo].[Sec_Media_Class]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Media_Class] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Media_Class t
GO
/****** Object:  View [dbo].[Sec_Media_Routing_Domain]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Media_Routing_Domain] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Media_Routing_Domain t
GO
/****** Object:  View [dbo].[Sec_NIC_Parameter]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_NIC_Parameter] AS
SELECT t.*, Object_Access_Level = 30
FROM t_NIC_Parameter t
GO
/****** Object:  View [dbo].[Sec_Network_Trunk_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Network_Trunk_Group] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Network_Trunk_Group t
GO
/****** Object:  View [dbo].[Sec_Network_Vru]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Network_Vru] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Network_Vru t
GO
/****** Object:  View [dbo].[Sec_Network_Vru_Bank]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Network_Vru_Bank] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Network_Vru_Bank t
GO
/****** Object:  View [dbo].[Sec_Network_Vru_Script]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Network_Vru_Script] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Network_Vru_Script t
GO
/****** Object:  View [dbo].[Sec_Object_Security]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Object_Security] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Object_Security t
GO
/****** Object:  View [dbo].[Sec_Peripheral]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Peripheral] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Peripheral t
GO
/****** Object:  View [dbo].[Sec_Peripheral_Default_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Peripheral_Default_Route] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Peripheral_Default_Route t
GO
/****** Object:  View [dbo].[Sec_Peripheral_Monitor]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Peripheral_Monitor] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Peripheral_Monitor t
GO
/****** Object:  View [dbo].[Sec_Peripheral_Target]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Peripheral_Target] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Peripheral_Target t
GO
/****** Object:  View [dbo].[Sec_Person]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Person] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Person t
GO
/****** Object:  View [dbo].[Sec_Phone_Strategy]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Phone_Strategy] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Phone_Strategy t
GO
/****** Object:  View [dbo].[Sec_Phone_Strategy_Node]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Phone_Strategy_Node] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Phone_Strategy_Node t
GO
/****** Object:  View [dbo].[Sec_Physical_Interface_Control]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Physical_Interface_Control] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Physical_Interface_Controlle t
GO
/****** Object:  View [dbo].[Sec_Precision_Queue]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Precision_Queue] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Precision_Queue t
GO
/****** Object:  View [dbo].[Sec_Precision_Queue_Step]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Precision_Queue_Step] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Precision_Queue_Step t
GO
/****** Object:  View [dbo].[Sec_Precision_Queue_Term]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Precision_Queue_Term] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Precision_Queue_Term t
GO
/****** Object:  View [dbo].[Sec_Query_Rule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Query_Rule] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Query_Rule t
GO
/****** Object:  View [dbo].[Sec_Query_Rule_Clause]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Query_Rule_Clause] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Query_Rule_Clause t
GO
/****** Object:  View [dbo].[Sec_Reason_Code]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Reason_Code] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Reason_Code t
GO
/****** Object:  View [dbo].[Sec_Recurring_Schedule_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Recurring_Schedule_Map] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Recurring_Schedule_Map t
GO
/****** Object:  View [dbo].[Sec_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Route] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Route t
GO
/****** Object:  View [dbo].[Sec_Routing_Client]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Routing_Client] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Routing_Client t
GO
/****** Object:  View [dbo].[Sec_Schedule]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Schedule] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Schedule t
GO
/****** Object:  View [dbo].[Sec_Schedule_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Schedule_Map] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Schedule_Map t
GO
/****** Object:  View [dbo].[Sec_Schedule_Report]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Schedule_Report] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Schedule_Report t
GO
/****** Object:  View [dbo].[Sec_Schedule_Report_Input]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Schedule_Report_Input] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Schedule_Report_Input t
GO
/****** Object:  View [dbo].[Sec_Schedule_Source]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Schedule_Source] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Schedule_Source t
GO
/****** Object:  View [dbo].[Sec_Scheduled_Target]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Scheduled_Target] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Scheduled_Target t
GO
/****** Object:  View [dbo].[Sec_Script]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Script] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Script t
GO
/****** Object:  View [dbo].[Sec_Script_Cross_Reference]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Script_Cross_Reference] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Script_Cross_Reference t
GO
/****** Object:  View [dbo].[Sec_Script_Data]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Script_Data] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Script_Data t
GO
/****** Object:  View [dbo].[Sec_Script_Print_Control]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Script_Print_Control] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Script_Print_Control t
GO
/****** Object:  View [dbo].[Sec_Script_Table]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Script_Table] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Script_Table t
GO
/****** Object:  View [dbo].[Sec_Script_Table_Column]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Script_Table_Column] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Script_Table_Column t
GO
/****** Object:  View [dbo].[Sec_Service]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Service] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Service t
GO
/****** Object:  View [dbo].[Sec_Service_Array]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Service_Array] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Service_Array t
GO
/****** Object:  View [dbo].[Sec_Service_Array_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Service_Array_Member] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Service_Array_Member t
GO
/****** Object:  View [dbo].[Sec_Service_Level_Threshold]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Service_Level_Threshold] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Service_Level_Threshold t
GO
/****** Object:  View [dbo].[Sec_Service_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Service_Member] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Service_Member t
GO
/****** Object:  View [dbo].[Sec_Skill_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Skill_Group] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Skill_Group t
GO
/****** Object:  View [dbo].[Sec_Skill_Group_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Skill_Group_Member] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Skill_Group_Member t
GO
/****** Object:  View [dbo].[Sec_System_Attribute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_System_Attribute] AS
SELECT t.*, Object_Access_Level = 30
FROM t_System_Attribute t
GO
/****** Object:  View [dbo].[Sec_Translation_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Translation_Route] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Translation_Route t
GO
/****** Object:  View [dbo].[Sec_Trunk]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Trunk] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Trunk t
GO
/****** Object:  View [dbo].[Sec_Trunk_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Trunk_Group] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Trunk_Group t
GO
/****** Object:  View [dbo].[Sec_User_Formula]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_User_Formula] AS
SELECT t.*, Object_Access_Level = 30
FROM t_User_Formula t
GO
/****** Object:  View [dbo].[Sec_User_Formula_Equation]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_User_Formula_Equation] AS
SELECT t.*, Object_Access_Level = 30
FROM t_User_Formula_Equation t
GO
/****** Object:  View [dbo].[Sec_User_Variable]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_User_Variable] AS
SELECT t.*, Object_Access_Level = 30
FROM t_User_Variable t
GO
/****** Object:  View [dbo].[Sec_Vru_Port_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Sec_Vru_Port_Map] AS
SELECT t.*, Object_Access_Level = 30
FROM t_Vru_Port_Map t
GO
/****** Object:  View [dbo].[Service]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Service] AS
SELECT t.*
FROM t_Service t
GO
/****** Object:  View [dbo].[Service_Array]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Service_Array] AS
SELECT t.*
FROM t_Service_Array t
GO
/****** Object:  View [dbo].[Service_Array_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Service_Array_Member] AS
SELECT t.*
FROM t_Service_Array_Member t
GO
/****** Object:  View [dbo].[Service_Five_Minute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Service_Five_Minute] AS
SELECT t.*
FROM eu03_hds.dbo.Service_Five_Minute t
GO
/****** Object:  View [dbo].[Service_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Service_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Service_Half_Hour t
GO
/****** Object:  View [dbo].[Service_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Service_Interval] AS
SELECT t.*
FROM eu03_hds.dbo.Service_Interval t
GO
/****** Object:  View [dbo].[Service_Level_Threshold]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Service_Level_Threshold] AS
SELECT t.*
FROM t_Service_Level_Threshold t
GO
/****** Object:  View [dbo].[Service_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Service_Member] AS
SELECT t.*
FROM t_Service_Member t
GO
/****** Object:  View [dbo].[Service_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Service_Real_Time] AS
SELECT t.*
FROM t_Service_Real_Time t
GO
/****** Object:  View [dbo].[Skill_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Skill_Group] AS
SELECT t.*
FROM t_Skill_Group t
GO
/****** Object:  View [dbo].[Skill_Group_Five_Minute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Skill_Group_Five_Minute] AS
SELECT t.*
FROM eu03_hds.dbo.Skill_Group_Five_Minute t
GO
/****** Object:  View [dbo].[Skill_Group_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Skill_Group_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Skill_Group_Half_Hour t
GO
/****** Object:  View [dbo].[Skill_Group_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Skill_Group_Interval] AS
SELECT t.*
FROM eu03_hds.dbo.Skill_Group_Interval t
GO
/****** Object:  View [dbo].[Skill_Group_Member]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Skill_Group_Member] AS
SELECT t.*
FROM t_Skill_Group_Member t
GO
/****** Object:  View [dbo].[Skill_Group_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Skill_Group_Real_Time] AS
SELECT t.*
FROM t_Skill_Group_Real_Time t
GO
/****** Object:  View [dbo].[System_Attribute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[System_Attribute] AS
SELECT t.*
FROM t_System_Attribute t
GO
/****** Object:  View [dbo].[System_Capacity_Interval]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[System_Capacity_Interval] AS
SELECT t.*
FROM eu03_hds.dbo.System_Capacity_Interval t
GO
/****** Object:  View [dbo].[System_Capacity_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[System_Capacity_Real_Time] AS
SELECT t.*
FROM t_System_Capacity_Real_Time t
GO
/****** Object:  View [dbo].[Termination_Call_Detail]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Termination_Call_Detail] AS
SELECT t.*
FROM eu03_hds.dbo.Termination_Call_Detail t
GO
/****** Object:  View [dbo].[Termination_Call_Variable]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Termination_Call_Variable] AS
SELECT t.*
FROM eu03_hds.dbo.Termination_Call_Variable t
GO
/****** Object:  View [dbo].[Translation_Route]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Translation_Route] AS
SELECT t.*
FROM t_Translation_Route t
GO
/****** Object:  View [dbo].[Translation_Route_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Translation_Route_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Translation_Route_Half_Hour t
GO
/****** Object:  View [dbo].[Trunk]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Trunk] AS
SELECT t.*
FROM t_Trunk t
GO
/****** Object:  View [dbo].[Trunk_Group]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Trunk_Group] AS
SELECT t.*
FROM t_Trunk_Group t
GO
/****** Object:  View [dbo].[Trunk_Group_Five_Minute]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Trunk_Group_Five_Minute] AS
SELECT t.*
FROM eu03_hds.dbo.Trunk_Group_Five_Minute t
GO
/****** Object:  View [dbo].[Trunk_Group_Half_Hour]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Trunk_Group_Half_Hour] AS
SELECT t.*
FROM eu03_hds.dbo.Trunk_Group_Half_Hour t
GO
/****** Object:  View [dbo].[Trunk_Group_Real_Time]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Trunk_Group_Real_Time] AS
SELECT t.*
FROM t_Trunk_Group_Real_Time t
GO
/****** Object:  View [dbo].[User_Formula]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[User_Formula] AS
SELECT t.*
FROM t_User_Formula t
GO
/****** Object:  View [dbo].[User_Formula_Equation]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[User_Formula_Equation] AS
SELECT t.*
FROM t_User_Formula_Equation t
GO
/****** Object:  View [dbo].[User_Variable]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[User_Variable] AS
SELECT t.*
FROM t_User_Variable t
GO
/****** Object:  View [dbo].[Vru_Port_Map]    Script Date: 05-07-2018 13:37:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[Vru_Port_Map] AS
SELECT t.*
FROM t_Vru_Port_Map t
GO
ALTER TABLE [dbo].[ViewType]  WITH CHECK ADD CHECK  (([One]=(1)))
GO
