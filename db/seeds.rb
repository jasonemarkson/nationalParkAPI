# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

park = Park.create( 
    { fullName: "Acadia National Park", parkCode: "acad", description: "Acadia National Park protects the natural beauty of the highest rocky headlands along the Atlantic coastline of the United States, an abundance of habitats, and a rich cultural heritage. At 3.5 million visits a year, it's one of the top 10 most-visited national parks in the United States. Visitors enjoy 27 miles of historic motor roads, 158 miles of hiking trails, and 45 miles of carriage roads.", latitude: "44.409286", longitude: "-68.247501", 
    activities: [
        {
        id: "09DF0950-D319-4557-A57E-04CD2F63FF42",
        name: "Arts and Culture"
        },
        {
        id: "FAED7F97-3474-4C21-AB42-FB0768A2F826",
        name: "Cultural Demonstrations"
        },
        {
        id: "13A57703-BB1A-41A2-94B8-53B692EB7238",
        name: "Astronomy"
        },
        {
        id: "D37A0003-8317-4F04-8FB0-4CF0A272E195",
        name: "Stargazing"
        },
        {
        id: "7CE6E935-F839-4FEC-A63E-052B1DEF39D2",
        name: "Biking"
        },
        {
        id: "071BA73C-1D3C-46D4-A53C-00D5602F7F0E",
        name: "Boating"
        },
        {
        id: "A59947B7-3376-49B4-AD02-C0423E08C5F7",
        name: "Camping"
        },
        {
        id: "7CFF5F03-5ECC-4F5A-8572-75D1F0976C0C",
        name: "Group Camping"
        },
        {
        id: "B12FAAB9-713F-4B38-83E4-A273F5A43C77",
        name: "Climbing"
        },
        {
        id: "87D3B1CD-3903-4561-ABB1-2DD870C43F2F",
        name: "Rock Climbing"
        },
        {
        id: "C11D3746-5063-4BD0-B245-7178D1AD866C",
        name: "Compass and GPS"
        },
        {
        id: "CA3641A0-FADC-497F-B036-3FE426D0DDCC",
        name: "Geocaching"
        },
        {
        id: "AE42B46C-E4B7-4889-A122-08FE180371AE",
        name: "Fishing"
        },
        {
        id: "25FB188F-5AAD-459A-9092-28A9801709FF",
        name: "Freshwater Fishing"
        },
        {
        id: "9BC03FAF-28F1-4609-BF6F-643F58071AED",
        name: "Fly Fishing"
        },
        {
        id: "17411C8D-5769-4D0F-ABD1-52ED03840C18",
        name: "Saltwater Fishing"
        },
        {
        id: "1DFACD97-1B9C-4F5A-80F2-05593604799E",
        name: "Food"
        },
        {
        id: "C6D3230A-2CEA-4AFE-BFF3-DC1E2C2C4BB4",
        name: "Picnicking"
        },
        {
        id: "B33DC9B6-0B7D-4322-BAD7-A13A34C584A3",
        name: "Guided Tours"
        },
        {
        id: "3DE599E2-22ED-40BF-B383-EDA073563C1E",
        name: "Bus/Shuttle Guided Tour"
        },
        {
        id: "5A241412-0CFB-497A-9B5F-0AB8C03CDE72",
        name: "Boat Tour"
        },
        {
        id: "42FD78B9-2B90-4AA9-BC43-F10E9FEA8B5A",
        name: "Hands-On"
        },
        {
        id: "31F88DA6-696F-441F-89CF-D7B1415C4CB9",
        name: "Citizen Science"
        },
        {
        id: "BFF8C027-7C8F-480B-A5F8-CD8CE490BFBA",
        name: "Hiking"
        },
        {
        id: "45261C0A-00D8-4C27-A1F8-029F933A0D34",
        name: "Front-Country Hiking"
        },
        {
        id: "0307955A-B65C-4CE4-A780-EB36BAAADF0B",
        name: "Horse Trekking"
        },
        {
        id: "1886DA47-0AEC-4568-B9C2-8E9BC316AAAC",
        name: "Horseback Riding"
        },
        {
        id: "5FF5B286-E9C3-430E-B612-3380D8138600",
        name: "Ice Skating"
        },
        {
        id: "4D224BCA-C127-408B-AC75-A51563C42411",
        name: "Paddling"
        },
        {
        id: "21DB3AFC-8AAC-4665-BC1F-7198C0685983",
        name: "Canoeing"
        },
        {
        id: "F353A9ED-4A08-456E-8DEC-E61974D0FEB6",
        name: "Kayaking"
        },
        {
        id: "B3EF12AF-D951-419E-BD3C-6B36CBCC1E16",
        name: "Stand Up Paddleboarding"
        },
        {
        id: "DF4A35E0-7983-4A3E-BC47-F37B872B0F25",
        name: "Junior Ranger Program"
        },
        {
        id: "F9B1D433-6B86-4804-AED7-B50A519A3B7C",
        name: "Skiing"
        },
        {
        id: "EAB1EBDE-5B72-493F-8F8F-0EE5B1724436",
        name: "Cross-Country Skiing"
        },
        {
        id: "C38B3C62-1BBF-4EA1-A1A2-35DE21B74C17",
        name: "Snow Play"
        },
        {
        id: "7C912B83-1B1B-4807-9B66-97C12211E48E",
        name: "Snowmobiling"
        },
        {
        id: "01D717BC-18BB-4FE4-95BA-6B13AD702038",
        name: "Snowshoeing"
        },
        {
        id: "587BB2D3-EC35-41B2-B3F7-A39E2B088AEE",
        name: "Swimming"
        },
        {
        id: "82C3230F-6F87-452C-A01B-F8458867B26A",
        name: "Freshwater Swimming"
        },
        {
        id: "C2801992-F34D-4974-A0F2-80FF04309EE4",
        name: "Saltwater Swimming"
        },
        {
        id: "0B685688-3405-4E2A-ABBA-E3069492EC50",
        name: "Wildlife Watching"
        },
        {
        id: "5A2C91D1-50EC-4B24-8BED-A2E11A1892DF",
        name: "Birdwatching"
        },
        {
        id: "0C0D142F-06B5-4BE1-8B44-491B90F93DEB",
        name: "Park Film"
        },
        {
        id: "24380E3F-AD9D-4E38-BF13-C8EEB21893E7",
        name: "Shopping"
        },
        {
        id: "467DC8B8-0B7D-436D-A026-80A22358F615",
        name: "Bookstore and Park Store"
        }
        ],
        images: [
        {
        credit: "NPS / Kristi Rugg",
        title: "Acadia's rocky coastline",
        altText: "Large puffy clouds dot a brilliant blue sky as wave crash against the rocky coastline of Acadia.",
        caption: "Millions of people come to Acadia for our distinctive rocky coastline.",
        url: "https://www.nps.gov/common/uploads/structured_data/3C7B45AE-1DD8-B71B-0B7EE131C7DFC2F5.jpg"
        },
        {
        credit: "NPS / Kristi Rugg",
        title: "Heavy snow-laden trees",
        altText: "Hiking tracks carved through three feet of snow wind through a heavy snow-laden forest.",
        caption: "During the colder months snows transform our landscape into a winter wonderland.",
        url: "https://www.nps.gov/common/uploads/structured_data/3C7B4BEC-1DD8-B71B-0B2CF833F93140FF.jpg"
        },
        {
        credit: "NPS / Kristi Rugg",
        title: "Sunset atop Cadillac Mountain",
        altText: "A brilliant sunset filled with hues of blue, red, orange, magenta, and purple highlight the sky.",
        caption: "As the tallest point on the eastern seaboard Cadillac Mountain provides fantastic viewpoints.",
        url: "https://www.nps.gov/common/uploads/structured_data/3C7B477B-1DD8-B71B-0BCB48E009241BAA.jpg"
        },
        {
        credit: "NPS / Kristi Rugg",
        title: "Climbing The Precipice",
        altText: "Two hikers ascend a sheer cliff trail by way of historic iron rung ladders.",
        caption: "Whether it's a stroll along Ocean Path or a difficult ascent up The Precipice, there are hiking trails for everyone!",
        url: "https://www.nps.gov/common/uploads/structured_data/3C7B48F9-1DD8-B71B-0BD3B413E58978F8.jpg"
        }]
    } 
)
