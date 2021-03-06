USE [master]
GO
CREATE DATABASE [EaseFlight] 
GO
USE [EaseFlight]
GO

/****** Object:  Table [dbo].[Account]    Script Date: 10/30/2019 10:29:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](250) NULL,
	[FirstName] [varchar](150) NULL,
	[LastName] [varchar](150) NULL,
	[Gender] [bit] NULL,
	[Birthday] [datetime] NULL,
	[Email] [varchar](250) NULL,
	[Phone] [varchar](50) NULL,
	[Address] [varchar](250) NULL,
	[IDCardOrPassport] [varchar](50) NULL,
	[DateIssueOrExpiry] [datetime] NULL,
	[PlaceIssue] [varchar](250) NULL,
	[Photo] [varchar](250) NULL,
	[ResetPasswordToken] [varchar](250) NULL,
	[ExpireToken] [datetime] NULL,
	[AccountTypeID] [int] NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccountType]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Roles] [varchar](250) NULL,
 CONSTRAINT [PK_AccountType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airport]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airport](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[City] [varchar](250) NULL,
	[CountryID] [int] NULL,
 CONSTRAINT [PK_Airport] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Region] [varchar](250) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Flight]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Flight](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PlaneID] [int] NULL,
	[DepartureDate] [datetime] NULL,
	[ArrivalDate] [datetime] NULL,
	[Price] [float] NULL,
	[Status] [varchar](250) NULL,
 CONSTRAINT [PK_Flight] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassengerTicket]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassengerTicket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TicketID] [int] NULL,
	[FirstName] [varchar](150) NULL,
	[LastName] [varchar](150) NULL,
	[Gender] [bit] NULL,
	[IDCardOrPassport] [varchar](50) NULL,
	[DateIssueOrExpiry] [datetime] NULL,
	[PlaceIssue] [varchar](250) NULL,
	[Birthday] [datetime] NULL,
	[PassengerTypeID] [int] NULL,
 CONSTRAINT [PK_PassengerTicket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassengerType]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassengerType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Discount] [int] NULL,
 CONSTRAINT [PK_PassengerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plane]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plane](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Airline] [varchar](250) NULL,
	[SeatMapID] [int] NULL,
	[Status] [varchar](250) NULL,
 CONSTRAINT [PK_Plane] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaneAirport]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaneAirport](
	[PlaneID] [int] NOT NULL,
	[AirportID] [int] NOT NULL,
	[DepartureOrArrival] [varchar](2250) NULL,
 CONSTRAINT [PK_PlaneAirport] PRIMARY KEY CLUSTERED 
(
	[PlaneID] ASC,
	[AirportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlaneSeatClass]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlaneSeatClass](
	[PlaneID] [int] NOT NULL,
	[SeatClassID] [int] NOT NULL,
	[Capacity] [int] NULL,
	[Price] [float] NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_PlaneSeatClass] PRIMARY KEY CLUSTERED 
(
	[PlaneID] ASC,
	[SeatClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatClass]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatClass](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
 CONSTRAINT [PK_SeatClass] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeatMap]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeatMap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
	[Columns] [varchar](250) NULL,
	[RowWithoutSeat] [varchar](250) NULL,
	[Capacity] [int] NULL,
 CONSTRAINT [PK_SeatMap] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NULL,
	[Price] [float] NULL,
	[Discount] [int] NULL,
	[Description] [varchar](1250) NULL,
	[CreateDate] [datetime] NULL,
	[UpdateDate] [datetime] NULL,
	[PaymentID] [varchar](250) NULL,
	[Status] [varchar](250) NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TicketFlight]    Script Date: 10/30/2019 10:29:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TicketFlight](
	[TicketID] [int] NOT NULL,
	[FlightID] [int] NOT NULL,
	[SeatCode] [varchar](50) NULL,
	[RoundTrip] [bit] NULL,
	[Order] [int] NULL,
 CONSTRAINT [PK_TicketFlight] PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC,
	[FlightID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_AccountType] FOREIGN KEY([AccountTypeID])
REFERENCES [dbo].[AccountType] ([ID])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_AccountType]
GO
ALTER TABLE [dbo].[Airport]  WITH CHECK ADD  CONSTRAINT [FK_Airport_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Airport] CHECK CONSTRAINT [FK_Airport_Country]
GO
ALTER TABLE [dbo].[Flight]  WITH CHECK ADD  CONSTRAINT [FK_Flight_Plane] FOREIGN KEY([PlaneID])
REFERENCES [dbo].[Plane] ([ID])
GO
ALTER TABLE [dbo].[Flight] CHECK CONSTRAINT [FK_Flight_Plane]
GO
ALTER TABLE [dbo].[PassengerTicket]  WITH CHECK ADD  CONSTRAINT [FK_PassengerTicket_PassengerType] FOREIGN KEY([PassengerTypeID])
REFERENCES [dbo].[PassengerType] ([ID])
GO
ALTER TABLE [dbo].[PassengerTicket] CHECK CONSTRAINT [FK_PassengerTicket_PassengerType]
GO
ALTER TABLE [dbo].[PassengerTicket]  WITH CHECK ADD  CONSTRAINT [FK_PassengerTicket_Ticket] FOREIGN KEY([TicketID])
REFERENCES [dbo].[Ticket] ([ID])
GO
ALTER TABLE [dbo].[PassengerTicket] CHECK CONSTRAINT [FK_PassengerTicket_Ticket]
GO
ALTER TABLE [dbo].[Plane]  WITH CHECK ADD  CONSTRAINT [FK_Plane_SeatMap] FOREIGN KEY([SeatMapID])
REFERENCES [dbo].[SeatMap] ([ID])
GO
ALTER TABLE [dbo].[Plane] CHECK CONSTRAINT [FK_Plane_SeatMap]
GO
ALTER TABLE [dbo].[PlaneAirport]  WITH CHECK ADD  CONSTRAINT [FK_PlaneAirport_Airport] FOREIGN KEY([AirportID])
REFERENCES [dbo].[Airport] ([ID])
GO
ALTER TABLE [dbo].[PlaneAirport] CHECK CONSTRAINT [FK_PlaneAirport_Airport]
GO
ALTER TABLE [dbo].[PlaneAirport]  WITH CHECK ADD  CONSTRAINT [FK_PlaneAirport_Plane] FOREIGN KEY([PlaneID])
REFERENCES [dbo].[Plane] ([ID])
GO
ALTER TABLE [dbo].[PlaneAirport] CHECK CONSTRAINT [FK_PlaneAirport_Plane]
GO
ALTER TABLE [dbo].[PlaneSeatClass]  WITH CHECK ADD  CONSTRAINT [FK_PlaneSeatClass_Plane] FOREIGN KEY([PlaneID])
REFERENCES [dbo].[Plane] ([ID])
GO
ALTER TABLE [dbo].[PlaneSeatClass] CHECK CONSTRAINT [FK_PlaneSeatClass_Plane]
GO
ALTER TABLE [dbo].[PlaneSeatClass]  WITH CHECK ADD  CONSTRAINT [FK_PlaneSeatClass_SeatClass] FOREIGN KEY([SeatClassID])
REFERENCES [dbo].[SeatClass] ([ID])
GO
ALTER TABLE [dbo].[PlaneSeatClass] CHECK CONSTRAINT [FK_PlaneSeatClass_SeatClass]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Account]
GO
ALTER TABLE [dbo].[TicketFlight]  WITH CHECK ADD  CONSTRAINT [FK_TicketFlight_Flight] FOREIGN KEY([FlightID])
REFERENCES [dbo].[Flight] ([ID])
GO
ALTER TABLE [dbo].[TicketFlight] CHECK CONSTRAINT [FK_TicketFlight_Flight]
GO
ALTER TABLE [dbo].[TicketFlight]  WITH CHECK ADD  CONSTRAINT [FK_TicketFlight_Ticket] FOREIGN KEY([TicketID])
REFERENCES [dbo].[Ticket] ([ID])
GO
ALTER TABLE [dbo].[TicketFlight] CHECK CONSTRAINT [FK_TicketFlight_Ticket]
GO
USE [master]
GO
ALTER DATABASE [EaseFlight] SET  READ_WRITE 
GO
