create database sushidb
go
use sushidb

create table articles (id int identity(1,1),
					title nvarchar(500),
					imgLink nvarchar(500),
					content nvarchar(4000))

create table menus (id int identity(1,1),
				name nvarchar(500),
				content nvarchar(4000),
				price float)

insert into articles values(N'24 types of sushi rolls',
				'a2.jpg',
				N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna 
				aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
				 ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore 
				 eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
				  dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim 
				  placerat facer possim assum.'
				  ),
				  (N'a24 types of sushi rolls',
				'a2.jpg',
				N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna 
				aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
				 ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore 
				 eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
				  dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim 
				  placerat facer possim assum.'
				  ),
				  (N'b24 types of sushi rolls',
				'a2.jpg',
				N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna 
				aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
				 ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore 
				 eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
				  dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim 
				  placerat facer possim assum.'
				  ),
				  (N'c24 types of sushi rolls',
				'a2.jpg',
				N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna 
				aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
				 ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore 
				 eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
				  dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim 
				  placerat facer possim assum.'
				  ),
				  (N'd24 types of sushi rolls',
				'a2.jpg',
				N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna 
				aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
				 ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore 
				 eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
				  dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim 
				  placerat facer possim assum.'
				  ),
				  (N'e24 types of sushi rolls',
				'a2.jpg',
				N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna 
				aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
				 ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore 
				 eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
				  dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim 
				  placerat facer possim assum.'
				  ),
				  (N'f24 types of sushi rolls',
				'a2.jpg',
				N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna 
				aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
				 ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore 
				 eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
				  dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim 
				  placerat facer possim assum.'
				  ),
				  (N'g24 types of sushi rolls',
				'a2.jpg',
				N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna 
				aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
				 ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore 
				 eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
				  dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim 
				  placerat facer possim assum.'
				  ),
				  (N'h24 types of sushi rolls',
				'a2.jpg',
				N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna 
				aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
				 ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore 
				 eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
				  dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim 
				  placerat facer possim assum.'
				  ),
				  (N'i24 types of sushi rolls',
				'a2.jpg',
				N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna 
				aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
				 ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore 
				 eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis
				  dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim 
				  placerat facer possim assum.'
				  )

insert into menus values(N'Claritas est etiam processus ',
				N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae sem condimentum lectus venenatis faucibus. Mauris sed tortor 
				ultricies, dictum sapien sed, imperdiet odio. ',
				15),
				(N'aClaritas est etiam processus ',
				N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae sem condimentum lectus venenatis faucibus. Mauris sed tortor 
				ultricies, dictum sapien sed, imperdiet odio. ',
				78),
				(N'bClaritas est etiam processus ',
				N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae sem condimentum lectus venenatis faucibus. Mauris sed tortor 
				ultricies, dictum sapien sed, imperdiet odio. ',
				65),
				(N'cClaritas est etiam processus ',
				N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae sem condimentum lectus venenatis faucibus. Mauris sed tortor 
				ultricies, dictum sapien sed, imperdiet odio. ',
				89),
				(N'dClaritas est etiam processus ',
				N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae sem condimentum lectus venenatis faucibus. Mauris sed tortor 
				ultricies, dictum sapien sed, imperdiet odio. ',
				23),
				(N'eClaritas est etiam processus ',
				N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae sem condimentum lectus venenatis faucibus. Mauris sed tortor 
				ultricies, dictum sapien sed, imperdiet odio. ',
				12),
				(N'fClaritas est etiam processus ',
				N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae sem condimentum lectus venenatis faucibus. Mauris sed tortor 
				ultricies, dictum sapien sed, imperdiet odio. ',
				78),
				(N'gClaritas est etiam processus ',
				N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae sem condimentum lectus venenatis faucibus. Mauris sed tortor 
				ultricies, dictum sapien sed, imperdiet odio. ',
				34),
				(N'hClaritas est etiam processus ',
				N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae sem condimentum lectus venenatis faucibus. Mauris sed tortor 
				ultricies, dictum sapien sed, imperdiet odio. ',
				56),
				(N'iClaritas est etiam processus ',
				N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vitae sem condimentum lectus venenatis faucibus. Mauris sed tortor 
				ultricies, dictum sapien sed, imperdiet odio. ',
				234)
select * from articles
				  

