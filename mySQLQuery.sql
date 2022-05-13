create table Customer(
	Id int not null primary key AUTO_INCREMENT,
    FullName varchar(255),
    Username varchar(255),
    Password varchar(255),
    Email varchar(255),
    PhoneNumber varchar(255),
    Address varchar(255),
    Status bit(1)
);

create table Image (
	Id int not null primary key AUTO_INCREMENT,
    ProductId int,
    Name varchar(255)
);

create table Invoice(
	Id int not null primary key AUTO_INCREMENT,
    CustomerId int,
    StaffId int,
    CreateDate datetime,
    TotalPrice int
);

create table InvoiceDetails(
	Id int not null primary key AUTO_INCREMENT,
    InvoiceId int,
    ProductDetailsId int,
    Quantity int,
    Unit int
);

create table Product(
	Id int not null primary key AUTO_INCREMENT,
    ProductTypeId int,
    SportTypeId int,
    Name varchar(255),
    Details varchar(1000),
    Discount float,
    Status bit(1)
);

create table ProductDetails(
	Id int not null primary key AUTO_INCREMENT,
    SizeId int,
    ProductId int,
    Inventory int,
    Price int
);

create table ProductType(
	Id int not null primary key AUTO_INCREMENT,
    Name varchar(255),
    Status bit(1)
);

create table Size(
	Id int not null primary key AUTO_INCREMENT,
    Name varchar(255),
    Status bit(1)
);

create table SportType(
	Id int not null primary key AUTO_INCREMENT,
    Name varchar(255),
    Status bit(1)
);

create table Staff(
	Id int not null primary key AUTO_INCREMENT,
    FullName varchar(255),
    Username varchar(255),
    Password varchar(255),
    Email varchar(255),
    Gender bit(1),
    PhoneNumber varchar(255),
    Address varchar(255),
    isAdmin bit(1),
    Status bit(1)
);

alter table Image add constraint ProductId_Image foreign key (ProductId) references Product(Id);
alter table Invoice add constraint CustomerId_Invoice foreign key (CustomerId) references Customer(Id);
alter table Invoice add constraint StaffId_Invoice foreign key (StaffId) references Staff(Id);
alter table InvoiceDetails add constraint BillId_InvoiceDetails foreign key (InvoiceId) references Invoice(Id);
alter table InvoiceDetails add constraint ProductDetailsId_InvoiceDetails foreign key (ProductDetailsId) references ProductDetails(Id);
alter table Product add constraint ProductTypeId_Product foreign key (ProductTypeId) references ProductType(Id);
alter table Product add constraint SportTypeId_Product foreign key (SportTypeId) references SportType(Id);
alter table ProductDetails add constraint ProductId_ProductDetails foreign key (ProductId) references Product(Id);
alter table ProductDetails add constraint SizeId_ProductDetails foreign key (SizeId) references Size(Id);


alter table Customer Auto_increment =1;
alter table Image Auto_increment =1;
alter table Invoice Auto_increment =1;
alter table InvoiceDetails Auto_increment =1;
alter table Product Auto_increment =1;
alter table ProductDetails Auto_increment =1;
alter table ProductType Auto_increment =1;
alter table Size Auto_increment =1;
alter table SportType Auto_increment =1;
alter table Staff Auto_increment =1;
