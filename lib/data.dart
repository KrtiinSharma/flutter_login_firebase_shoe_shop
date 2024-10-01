import 'models/brand.dart';
import 'models/product.dart';

List<Brand> brands = [
  Brand(
    name: 'Nike',
    iconURL:
        'https://cdn.iconscout.com/icon/free/png-512/free-nike-13-722724.png?f=webp&w=256',
  ),
  Brand(
    name: 'Adidas',
    iconURL:
        'https://cdn.iconscout.com/icon/free/png-512/free-adidas-12-722648.png?f=webp&w=256',
  ),
  Brand(
    name: 'Puma',
    iconURL:
        'https://cdn.iconscout.com/icon/free/png-512/free-puma-3421598-2854279.png?f=webp&w=256',
  ),
  Brand(
    name: 'Jordan',
    iconURL:
        'https://cdn.iconscout.com/icon/free/png-512/free-jordan-42-282181.png?f=webp&w=256',
  ),
  Brand(
    name: 'Reebok',
    iconURL:
        'https://cdn.iconscout.com/icon/free/png-512/free-reebok-3421600-2854281.png?f=webp&w=256',
  ),
  Brand(
    name: 'Asics',
    iconURL:
        'https://cdn.iconscout.com/icon/free/png-512/free-asics-tiger-3421542-2854223.png?f=webp&w=256',
  ),
];

List<Product> products = [
  Product(
    name: "Nike Air Force 1",
    brand: "Nike",
    price: 100,
    category: "Sneakers",
    reviews: 120,
    rating: 4.5,
    description:
        "The Nike Air Force 1, a true classic in the world of sneakers, offers timeless style and unbeatable comfort. Featuring iconic Nike branding and a sleek silhouette, these sneakers are perfect for any occasion. With Air cushioning technology, they provide responsive support with every step, making them ideal for all-day wear.",
    image:
        "https://tse3.mm.bing.net/th?id=OIP.YTFKrxNlWhzkbCc8uHmyhQHaFS&pid=Api&P=0&h=180",
  ),
  Product(
    name: "Adidas Superstar",
    brand: "Adidas",
    price: 80,
    category: "Sneakers",
    reviews: 90,
    rating: 4.3,
    description:
        "Step up your sneaker game with the Adidas Superstar. These iconic shoes boast a classic shell toe design and signature Adidas branding for a look that never goes out of style. Whether you're hitting the streets or just hanging out, the Superstar offers comfort and durability to keep you feeling great all day long.",
    image:
        "https://www.asphaltgold.com/cdn/shop/files/59516ae5c126127c133800c7a53e88d4ea9ad5a0_ID7801_Adidas_Supterstar_XLG_Footwear_White_Footwear_White_Gold_Metallic_os_1_768x768.jpg?v=1701263224",
  ),
  Product(
    name: "Converse Chuck Taylor",
    brand: "Converse",
    price: 60,
    category: "Sneakers",
    reviews: 80,
    rating: 4.0,
    description:
        "Embrace timeless style with the Converse Chuck Taylor sneakers. Made from durable canvas material, these shoes offer both comfort and versatility. Whether you're hitting the skate park or heading out for a night on the town, the Chuck Taylor's classic design and iconic branding will ensure you stand out from the crowd.",
    image:
        "https://tse3.mm.bing.net/th?id=OIP.zJVjxB6V9zIb-utpk7NpnQHaFj&pid=Api&P=0&h=180",
  ),
  Product(
    name: "Puma Suede Classic",
    brand: "Puma",
    price: 70,
    category: "Sneakers",
    reviews: 75,
    rating: 4.1,
    description:
        "Elevate your sneaker game with the Puma Suede Classic. Featuring a stylish suede upper and classic Puma branding, these shoes offer both style and comfort in equal measure. Whether you're hitting the streets or just hanging out with friends, the Suede Classic is sure to turn heads wherever you go.",
    image:
        "https://images.puma.com/image/upload/f_auto,q_auto,b_rgb:fafafa,w_2000,h_2000/global/374915/04/sv01/fnd/SEA/fmt/png/Suede-Classic-XXI-Trainers",
  ),
  Product(
    name: "New Balance 574",
    brand: "New Balance",
    price: 90,
    category: "Sneakers",
    reviews: 85,
    rating: 4.2,
    description:
        "Experience ultimate comfort and style with the New Balance 574 sneakers. Featuring ENCAP technology for superior support and cushioning, these shoes are perfect for all-day wear. Whether you're hitting the gym or just running errands, the 574 offers unbeatable performance and classic New Balance style.",
    image:
        "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2023%2F06%2Fnew-balance-550-white-green-BB550STA-release-info-003.jpg?cbr=1&q=90",
  ),
  Product(
    name: "Vans Old Skool",
    brand: "Vans",
    price: 65,
    category: "Sneakers",
    reviews: 70,
    rating: 4.0,
    description:
        "Step up your sneaker game with the Vans Old Skool. Featuring a classic silhouette and iconic side stripe detail, these shoes offer timeless style and unbeatable comfort. Whether you're hitting the skate park or just hanging out with friends, the Old Skool is sure to become your new go-to pair.",
    image:
        "https://jutay.co/cdn/shop/products/1_7c01eed7-b1f5-46b9-bef0-bf59efa15462_1445x.jpg?v=1638192125",
  ),
  Product(
    name: "Air Jordan 1 Travis Scott ",
    brand: "nike",
    price: 1000,
    category: "Sneakers",
    reviews: 70,
    rating: 5.0,
    description:
        "Step up your sneaker game with the Vans Old Skool. Featuring a classic silhouette and iconic side stripe detail, these shoes offer timeless style and unbeatable comfort. Whether you're hitting the skate park or just hanging out with friends, the Old Skool is sure to become your new go-to pair.",
    image:
        "https://tse1.mm.bing.net/th?id=OIP.02c_butMBdOF9Q4P8iBz-AHaFM&pid=Api&P=0&h=180",
  ),
  Product(
    name: "Air Jordan 1 Tokyo Biohacks ",
    brand: "nike",
    price: 500,
    category: "Sneakers",
    reviews: 70,
    rating: 4.5,
    description:
        "Step up your sneaker game with the Vans Old Skool. Featuring a classic silhouette and iconic side stripe detail, these shoes offer timeless style and unbeatable comfort. Whether you're hitting the skate park or just hanging out with friends, the Old Skool is sure to become your new go-to pair.",
    image:
        "https://tse4.mm.bing.net/th?id=OIP.k6dnNaCkgd9sBJYe4_zO3wHaFS&pid=Api&P=0&h=180",
  ),
];
