-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 11, 2021 lúc 05:37 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_blog`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `author_name`, `introduction`, `created_at`, `updated_at`) VALUES
(1, 'Lâm Minh Chánh', NULL, '2021-05-02 02:26:58', '2021-05-02 02:26:58'),
(2, 'Phil Town', NULL, '2021-05-02 06:23:03', '2021-05-02 06:23:03'),
(3, 'Trần Thanh Phong', NULL, '2021-05-02 06:26:14', '2021-05-02 06:26:14'),
(4, 'Chade - Meng Tan', NULL, '2021-05-02 06:55:39', '2021-05-02 06:55:39'),
(5, 'Nguyễn Ngọc Thạch', NULL, '2021-05-02 21:22:21', '2021-05-02 21:22:21'),
(6, 'Shinkai Makoto', NULL, '2021-05-02 21:37:37', '2021-05-02 21:37:37'),
(7, 'Nguyễn Nhật Ánh', NULL, '2021-05-02 21:41:31', '2021-05-02 21:41:31'),
(8, 'Fujiko F Fujio', NULL, '2021-05-05 06:20:38', '2021-05-05 06:20:38'),
(9, 'Gosho Aoyama', NULL, '2021-05-05 06:38:16', '2021-05-05 06:38:16'),
(10, 'Koyoharu Gotouge', NULL, '2021-05-05 06:44:21', '2021-05-05 06:44:21'),
(11, 'Eiichiro Oda', NULL, '2021-05-05 06:53:05', '2021-05-05 06:53:05'),
(12, 'MURATA YusukeOne', NULL, '2021-05-05 07:04:42', '2021-05-05 07:04:42'),
(13, 'Trang Anh', NULL, '2021-05-15 20:36:42', '2021-05-15 20:36:42'),
(14, 'The Sakura', NULL, '2021-05-15 20:42:46', '2021-05-15 20:42:46'),
(15, 'The Windy', NULL, '2021-05-15 20:54:41', '2021-05-15 20:54:41'),
(16, 'Dale Carnegie', NULL, '2021-05-15 20:59:25', '2021-05-15 20:59:25'),
(17, 'Thu Giang - Nguyễn Duy Cần', NULL, '2021-05-15 21:03:20', '2021-05-15 21:03:20'),
(18, 'Robin Sharma', NULL, '2021-05-15 21:05:51', '2021-05-15 21:05:51'),
(19, 'Tiểu Dã', NULL, '2021-05-15 21:08:26', '2021-05-15 21:08:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` decimal(18,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `user_id`, `total`, `created_at`, `updated_at`) VALUES
(1, 2, '998000', '2021-05-08 21:22:01', '2021-05-08 21:22:01'),
(2, 2, '2040000000', '2021-05-15 20:21:10', '2021-05-15 20:21:10'),
(3, 2, '1533000', '2021-05-15 21:29:16', '2021-05-15 21:29:16'),
(4, 2, '2445000', '2021-05-19 07:13:00', '2021-05-19 07:13:00'),
(5, 2, '3887000', '2021-05-25 02:56:07', '2021-05-25 02:56:07'),
(6, 2, '637000', '2021-06-04 23:59:52', '2021-06-04 23:59:52'),
(7, 2, '300000', '2021-06-10 18:12:10', '2021-06-10 18:12:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_details`
--

CREATE TABLE `bill_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bill_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` decimal(18,0) NOT NULL,
  `quatity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_details`
--

INSERT INTO `bill_details` (`id`, `bill_id`, `book_id`, `book_name`, `unit_price`, `quatity`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Sách Tài Chính Cá Nhân Cho Người Việt Nam - Tặng Khóa học Online về Tài chính', '200000', 2, '2021-05-08 21:22:01', '2021-05-08 21:22:01'),
(2, 1, 2, 'Payback Time - Ngày Đòi Nợ', '299000', 2, '2021-05-08 21:22:01', '2021-05-08 21:22:01'),
(3, 2, 1, 'Sách Tài Chính Cá Nhân Cho Người Việt Nam - Tặng Khóa học Online về Tài chính', '200000', 10200, '2021-05-15 20:21:10', '2021-05-15 20:21:10'),
(4, 3, 3, 'Đừng Để Mất Bò - 7 Bước Quản Lý Cửa Hàng Hiệu Quả Và Chống Thất Thoát', '169000', 7, '2021-05-15 21:29:16', '2021-05-15 21:29:16'),
(5, 3, 7, 'Cho Tôi Xin Một Vé Đi Tuổi Thơ', '40000', 5, '2021-05-15 21:29:16', '2021-05-15 21:29:16'),
(6, 3, 9, 'Doraemon - Chú Mèo Máy Đến Từ Tương Lai Tập 0', '50000', 3, '2021-05-15 21:29:16', '2021-05-15 21:29:16'),
(7, 4, 9, 'Doraemon - Chú Mèo Máy Đến Từ Tương Lai Tập 0', '50000', 20, '2021-05-19 07:13:00', '2021-05-19 07:13:00'),
(8, 4, 3, 'Đừng Để Mất Bò - 7 Bước Quản Lý Cửa Hàng Hiệu Quả Và Chống Thất Thoát', '169000', 5, '2021-05-19 07:13:00', '2021-05-19 07:13:00'),
(9, 4, 1, 'Sách Tài Chính Cá Nhân Cho Người Việt Nam - Tặng Khóa học Online về Tài chính', '200000', 3, '2021-05-19 07:13:00', '2021-05-19 07:13:00'),
(10, 5, 2, 'Payback Time - Ngày Đòi Nợ', '299000', 13, '2021-05-25 02:56:07', '2021-05-25 02:56:07'),
(11, 6, 2, 'Payback Time - Ngày Đòi Nợ', '299000', 1, '2021-06-04 23:59:52', '2021-06-04 23:59:52'),
(12, 6, 3, 'Đừng Để Mất Bò - 7 Bước Quản Lý Cửa Hàng Hiệu Quả Và Chống Thất Thoát', '169000', 2, '2021-06-04 23:59:52', '2021-06-04 23:59:52'),
(13, 7, 9, 'Doraemon - Chú Mèo Máy Đến Từ Tương Lai Tập 0', '50000', 6, '2021-06-10 18:12:10', '2021-06-10 18:12:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nxb_id` int(11) DEFAULT NULL,
  `author_id` int(11) NOT NULL,
  `republic` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `quatity` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `book_name`, `category_id`, `content`, `nxb_id`, `author_id`, `republic`, `year`, `price`, `quatity`, `created_at`, `updated_at`) VALUES
(1, 'Sách Tài Chính Cá Nhân Cho Người Việt Nam - Tặng Khóa học Online về Tài chính', 1, 'Cuốn sách “Tài chính cá nhân dành cho người Việt Nam” và bộ bài giảng trực tuyến tặng kèm, gồm tất cả những nội dung về tài chính cá nhân, như sau:\n\nKiếm tiền: Khi còn có thể làm việc, chúng ta cần kiếm tiền, tạo ra thu nhập với \"công suất\" lớn nhất.\nTiết kiệm tiền, sử dụng tiền: Chúng ta phải quản lý tiền hiệu quá, sử dụng tiền khôn ngoan. Đặc biệt, chúng ta phải tiết kiệm trước khi sử dụng.\nBảo vệ tiền: Chúng ta phải biết bảo vệ tiền, sự mất mát của tiền trước những rủi ro.\nĐầu tư tiền: Tiền phải sinh ra tiền. Chúng ta phải đầu tư để tiền tăng trưởng và đạt được mục tiêu tài chính cá nhân.\nMục tiêu tài chính cá nhân: An toàn, Đảm bảo, Độc lập, và Tự do tài chính.\nTác giả cuốn sách là Doanh nhân, Chuyên gia tài chính Lâm Minh Chánh.\n\nDoanh nhân Lâm Minh Chánh hiện là Chủ tịch trường đào tạo Quản trị Kinh doanh BizUni, Đồng Sáng lập Group QTvKN là cộng đồng doanh nhân hàng đầu VN. Anh Chánh có 17 năm kinh nghiệp làm quản lý cấp cao các tập đoàn nước ngoài, và 11 năm khởi nghiệp. Anh từng đảm trách các vị trí Tổng Giám đốc, Phó TGĐ, GĐ các DN về BHNT, Chứng khoán, Sàn vàng, Đầu tư. Anh tốt nghiệp MBA hạng ưu tại UTS, và là một chuyên gia có thực tiễn nhiều năm về tài chính và đầu tư.\nNhững bài viết về tài chính của anh Chánh được đăng trên nhiều báo: Kinh tế Sài Gòn, Đầu tư Chứng khoán, Nhịp cầu đầu tư, CafeF, CafeBiz, Bizlive, The Leader, TheBank, Chuyện thương trường.\n\n\nGHi CHÚ: SAU KHI MUA SÁCH, ĐỘC GIẢ NHỚ LÀM THEO GHI CHÚ DÁN SAU CUỐN SÁCH ĐỂ NHẬN ĐƯỢC KHÓA HỌC ONLINE VỀ TÀI CHÍNH CÁ NHÂN TỪ TÁC GIẢ LÂM MINH CHÁNH.\nCách quản lý tiền bạc mà đa số chúng ta vẫn đang làm, đó là: kiếm tiền, sử dụng tiền, tiết kiệm tiền, đầu tư tiền.\nNhưng có thể chúng ta:\n- Chưa sử dụng hết tiềm năng, công suất bản thân trong việc kiếm tiền.\n- Chưa tiêu dùng tiền hợp lý.\n- Không chắc chắn còn dư tiền cho việc tiết kiệm và tích lũy để đầu tư.\n- Không có kiến thức cơ bản về đầu tư, nên có thể sẽ bị thua lỗ, mất tiền.\n\n\nNhững câu chuyện thực tế:\nCâu chuyện 1: Vợ chồng anh An, kiếm tiền vừa đủ để tiêu dùng. Sang năm họ sẽ có con. Nhưng họ suy nghĩ một cách vô tư rằng “trời sinh voi sinh cỏ”, nên họ cứ vô tư, tới đâu hay tới đó.\nCâu chuyện 2: Anh Bảo dành dụm được 500 triệu. Nghe lời bạn rủ rê bỏ tiền vào dự án hợp tác đầu tư cam kết lãi suất 3%/tháng. Kết quả là anh nhận được 5 tháng lãi, sau đó thì không còn được nhận khoản tiền nào nữa. Anh Bảo mất đứt vốn.\nCâu chuyện 3: Chị Bình, 40 tuổi, lương ròng 70 triệu một tháng. Công ty chi trả BHXH 60% trên mức thu nhập ròng. Chị cũng tích lũy được một số tiền trong ngân hàng. Chị muốn về hưu tuổi 50 để làm những điều chị thích, nhưng chị không biết làm sao để có thu nhập ổn định sau khi đã về hưu.\nChúng ta hướng tới “tài chính cá nhân”, với những bước chi tiết như sau:\n- Kiếm tiền với hết tiềm năng, “công suất” của mình.\n- Tiết kiệm rồi mới sử dụng tiền, theo thứ tự ưu tiên theo sự quan trọng thiết yếu.\n- Bảo vệ tiền trước lạm phát, những rủi ro, và những đầu tư thua lỗ.\n- Xây dựng danh mục đầu tư để tiền tích lũy sinh sôi.\n- Đạt mục tiêu tài chính đã đặt ra.\n\nCâu chuyện 1: Khi biết về “tài chính cá nhân”, thì trước khi sinh con, vợ chồng anh An sẽ đặt mục tiêu là một số tiền cụ thể để sử dụng cho việc sinh, nuôi con. Họ phải làm thêm giờ, hoặc kiếm thêm công việc thứ hai để kiếm thêm tiền và tiết kiệm, tích lũy để có số tiền chuẩn bị cho việc sinh, nuôi con.\nCâu chuyện 2: Sau khi biết nguyên tắc “Không bao giờ có một bữa trưa miễn phí”, anh Bảo sẽ không đầu tư vào những dự án với mức lãi suất cam kết cao hơn ngân hàng.\nCâu chuyện 3: Để chủ động cuộc đời về hưu của mình, chị Bình sẽ phải xác định mức sống, mức thu nhập mà chị mong muốn ở tuổi 50. Từ đó chị sẽ tính được khoản tiền chị phải tiết kiệm để đầu tư cho quỹ tài chính cá nhân của mình. Và chị cũng phải xây dựng được danh mục đầu tư để sinh sôi nảy nở những khoản tiền đó, biến nó thành một số tiền lớn vào năm chị 50 tuổi. Số tiền lớn này sẽ sinh sôi, tạo ra những dòng tiền giúp chị đạt mức sống mà chị đã đặt ra.\nGiữa tháng 4/2020, sách được xuất bản. Ngay trong 2 tuần đầu, đã có hơn 3.000 cuốn sách được độc giả đón mua trên trang Facebook của tác giả.\nĐầu tháng 5/2020, sách được chính thức bán trên Tiki. \nGiữa tháng 7/2020, sách được in lần thứ tư, đưa tổng số sách đã được xuất bản lên 25.000 cuốn.\nTác giả và đội ngũ BizUni trân trọng cám ơn sự quan tâm của quý khách, quý độc giả!', 1, 1, 1, 2020, '200000.00', 89795, '2021-05-02 02:52:30', '2021-05-19 07:13:00'),
(2, 'Payback Time - Ngày Đòi Nợ', 1, '\"Trong chứng khoán và thị trường tài chính, dám tham gia đầu tư cũng là một thành công tâm lý ban đầu. Dù vậy, 95% nhà đầu tư Việt Nam thuộc nhóm nhà đầu tư nhỏ lẻ với vốn kiến thức tài chính vô cùng hạn chế. Họ tham gia vào thị trường chứng khoán với 100% ý chí và sự quyết tâm chiến thắng thị trường, nhưng thật không may mắn kết cục cuối cùng của họ luôn là sự thất bại và mất tiền.\n\nBởi vì, chúng ta thường dễ dàng nghe theo các “lời khuyên miễn phí” đến từ bạn bè, những người môi giới, những người nghe ngóng thông tin từ các “đội lái” làm giá và thao túng chứng khoán. Chúng ta không biết làm thế nào để phân biệt hai khái niệm “giá cả – pricing” và “giá trị – value”. Hay mua mua, bán bán liên tục hàng ngày với việc dán mắt vào bảng điện tử, phân tích biểu đồ, đường trung bình giá… và mong đợi một vận may cổ phiếu cùng giá của nó sẽ đi theo suy đoán của mình?\n\nRất nhiều “nhà đầu tư” không hề có một hệ thống đầu tư chuẩn mực nào cả. Không biết cách và những tiêu chí để tìm kiếm cổ phiếu, theo dõi, quyết định điểm mua và quyết định thời điểm bán ra. Vì không có hệ thống đầu tư chuẩn mực nên kết quả chúng ta chỉ có một sự lựa chọn đó chính là THUA LỖ.\n\nVậy có phải chỉ có những chuyên gia tài chính mới có thể gặt hái thành công trên thị trường chứng khoán? Để kiếm được tiền từ chứng khoán bạn phải sở hữu hàng tá kho tàng kiến thức tài chính vốn không dễ dàng “hấp thụ” trong một sớm một chiều? \n\nKhông hẳn vậy. Có rất nhiều người dù không được đào tạo bài bản về các kiến thức tài chính, dù vẫn là những người đầu tư nhỏ lẻ họ vẫn chiến thắng thị trường và làm giàu được từ chứng khoán. Đó là bởi vì họ có được một hệ thống đầu tư chuẩn mực, biết vận dụng các công cụ phân tích, biết tuân thủ các nguyên tắc trong đầu tư.\n\nCó một hệ thống đầu tư chuẩn mực đã và đang được những nhà đầu tư bậc thầy trên thế giới như Warren Buffett, Charlie Munger… áp dụng. Hệ thống đầu tư và phương pháp đầu tư ưu việt đó đã được gói gọn và thực sự dễ hiểu trong cuốn PayBack Time – Ngày đòi nợ của tác giả Phil Town.\n\nNGÀY ĐÒI NỢ – Payback Time là cuốn sách bán chạy nhất New York Time được tác giả Phil Town sử dụng những ngôn ngữ đơn giản, dễ hiểu và lồng ghép những ví dụ thực tế giúp cho người đọc tiếp cận với những kiến thức về đầu tư chứng khoán một cách dễ dàng. Bên cạnh đó với những kiến thức và trải nghiệm của bản thân, chúng tôi đã đưa cuốn sách gần gũi hơn với bạn đọc Việt Nam.\n\nCuốn sách sẽ hướng dẫn bạn từ cách thức lựa chọn, đánh giá cổ phiếu, cho đến xây dựng cho mình một danh mục các cổ phiếu sẽ mua, mức giá mua–bán nào là hợp lý, cùng với những nguyên tắc mà bạn phải tuân theo… và cứ thực hành như vậy cho tới khi bạn trở nên giàu có.\n\n“Một cuộc sống hạnh phúc được bắt đầu từ những quyết định đầu tư khôn ngoan”. Ngay ngày hôm nay, hãy bắt đầu quyết định đầu tư khôn ngoan của bạn bằng việc trang bị một hệ thống và phương pháp đầu tư hoàn chỉnh đã được chứng minh hiệu quả tuyệt đối qua thời gian được trình bày trong cuốn sách này. Bởi vì: Kiếm một số tiền lớn từ đầu tư chứng khoán chính là cách “trả thù” tốt nhất cho tương lai tài chính của bạn vốn đã bị cướp đi trước đây.\n\n \n\nMỤC LỤC SÁCH\n\nLưu ý cùng độc giả\n\nLời tựa \n\nChương 1: Con đường từ Quy tắc số 1- RULE #1 – đến Payback Time \n\nChương 2: Người giàu đã dùng khủng hoảng để “PHẤT LÊN” như thế nào? \n\nChương 3: ĐẦU TƯ vào các quỹ tương hỗ không mang lại hiệu quả \n\nChương 4: BA CHỮ M – Công thức đầu tư không có rủi ro \n\nChương 5: Payback Time nghĩa là “KHÔNG SỢ HÃI” \n\nChương 6: TÁM BƯỚC chập chững đi đến thành công \n\nChương 7: Chỉ có phương pháp SÀN & TRẦN (FACs – FLOOR & CEILINGs) giúp bạn kiếm tiền \n\nChương 8: Câu chuyện cổ tích của một gia đình \n\nChương 9: TIỀN CHÙA cùng Berky \n\nChương 10: Cùng tham gia cách mạng về QUY TẮC SỐ 1.\"\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 3, 2, 1, 2017, '299000.00', 84, '2021-05-02 06:25:05', '2021-06-04 23:59:52'),
(3, 'Đừng Để Mất Bò - 7 Bước Quản Lý Cửa Hàng Hiệu Quả Và Chống Thất Thoát', 1, 'Trần Thanh Phong là tác giả của 3 quyển sách, chủ 2 doanh nghiệp và là một vận động viên ba môn phối hợp Ironman. Anh được mọi người nhắc đến như là một tác giả Việt đầu tiên viết về chủ đề Khởi Nghiệp Kinh Doanh Thực Chiến.\n\nAnh không phải là diễn giả hay học giả mà là một người làm nghề thực sự. Sau 15 năm khởi nghiệp, từng quản lý nhiều công việc kinh doanh, trong đó có chuỗi thời trang nhượng quyền lên đến 65 cửa hàng trên toàn quốc, anh đã đúc kết nhiều kinh nghiệm hết sức thực tế và gói gọn trong tập sách này.\nĐỪNG ĐỂ MẤT BÒ MỚI LO LÀM CHUỒNG!\nBạn đang quản lý hay làm chủ một cửa hàng nhưng công việc kinh doanh lại không được suôn sẻ. Bạn luôn phải đau đầu vì những vấn đề như: \n\nTháng nào cũng có một lượng ngân quỹ “không cánh mà bay”.\nKhó tuyển người, nhân viên “đến rồi đi” mà không ai gắn bó.\nNhân viên đi làm trễ, vi phạm nội quy, nói hoài cũng không thay đổi.\nHay dạy mãi nhưng nhân viên vẫn không làm được việc.\nĐừng đi tìm cách gỡ rối ở đâu xa xôi, quyển sách này sẽ giúp bạn giải quyết TẤT CẢ những vấn đề trên theo một cách khoa học và hiệu quả nhất. \n\nQuyển sách mang đến cho bạn:\n\n3 bước tuyển chọn và huấn luyện để có được đội ngũ nhân viên xuất sắc.\nCách thức tổ chức bộ máy, phân chia công việc, hướng đến tự động hóa hoạt động kinh doanh.\n2 phương pháp để đôn đốc nhân viên làm việc chăm chỉ, nghiêm túc mà không cảm thấy ức chế.\nĐặc biệt là danh sách hơn 20 chiêu trò gian lận, trộm cắp phổ biến, vẫn đang âm thầm diễn ra và lấy đi hàng tỷ đồng mỗi năm tại các cửa hàng.\nQuyển sách này dành cho:\n\nNgười đang kinh doanh cửa hàng, nhà hàng, cà phê hoặc mô hình chuỗi. \nNhững ai gặp khó khăn trong việc tự động hóa doanh nghiệp.\nNhững ai đang đau đầu trong công tác kiểm soát hoạt động của nhân viên.\nHay bất kỳ ai yêu thích kinh doanh và ấp ủ giấc mơ làm giàu từ một doanh nghiệp vững bền.\nHãy mua ngay quyển sách này để có trong tay những giải pháp tuyệt vời cho cửa hàng của bạn!\n\n \n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 4, 3, 1, 2020, '169000.00', 86, '2021-05-02 06:28:39', '2021-06-04 23:59:52'),
(4, 'Search Inside Yourself', 1, 'Tất cả chúng ta đều biết công cụ tìm kiếm Google và công ty Google với văn hóa doanh nghiệp tuyệt vời nổi tiếng khắp thế giới, nhưng liệu có bao nhiêu người trong số chúng ta biết được điều gì đã làm nên nền tảng cho sự nổi tiếng đó? Chade-Meng Tan – tác giả cuốn sách Search Inside Yourself sẽ giải thích cho bạn bí mật đó.\n\nMỗi năm, có đến hàng nghìn kĩ sư Google tham gia một trong 12 khóa đào tạo về thiền để tăng cường khả năng “cân bằng nhận thức” về những gì đang diễn ra xung quanh. Khóa học nổi tiếng nhất – mang tên “Search inside yourself” (Tìm kiếm bên trong bạn) – luôn là khóa học được trông đợi nhất và thu hút nhiều người tham gia nhất với danh sách học viên chờ tham dự dài đến sáu tháng. Khóa học do Chade-Meng Tan khởi sướng, ông là người rất có ảnh hưởng đến văn hóa Google, là người mà bất cứ nhân vật nổi tiếng nào khi đến thăm công ty cũng đều muốn gặp. Tham vọng của Meng chính là: “Soi sáng tâm trí, mở rộng trái tim và tạo ra hòa bình thế giới”.\n\nCuốn sách Search inside yourself đã được ông viết lại dựa trên các kinh nghiệm đúc kết từ khóa học cùng các bài tập thiền để mọi người trong chúng ta đều có thể áp dụng được mà không cần phải tham gia khóa học kia của Google. Bằng ngôn từ đơn giản, dễ hiểu, cùng các bước luyện tập cơ bản nhằm giúp con người kiểm soát trí thông minh cảm xúc – làm chủ được cảm xúc bản thân, từ đó trở thành con người hạnh phúc nhất thế giới và lan tỏa niềm vui đến mọi người. “Tôi không thích mang Phật giáo vào Google”, Meng nói. “Tôi thích giúp đỡ mọi người ở Goolge tìm kiếm chìa khóa hạnh phúc”.\n\nĐúng như Eric Schmidt, Giám đốc điều hành của Google đã từng nói: “Cuốn sách này và khóa học mà nó dựa trên đại diện cho một trong những khía cạnh tuyệt vời nhất của văn hóa Google – một cá nhân với một ý tưởng thật sự vĩ đại có thể thay đổi thế giới”.\n\nCuốn sách được chia làm ba phần chính:\n\nRèn luyện khả năng chú ý: Chú ý là nền tảng của mọi năng lực cảm xúc và nhận thức cao hơn. Do đó, bất cứ giáo trình rèn luyện trí thông minh cảm xúc nào cũng đều phải bắt đầu với việc rèn luyện khả năng chú ý. Ý tưởng ở đây là rèn luyện khả năng chú ý để tạo ra một tâm trí vừa an bình vừa sáng sủa. Một tâm trí như vậy sẽ tạo nền tảng cho trí thông minh cảm xúc.\n\nTự phát triển kiến thức và tự làm chủ bản thân: Sử dụng khả năng chú ý đã qua rèn luyện để nâng cao khả năng nhận thức quá trình cảm giác và tư duy của bạn. Từ đó, bạn có thể quan sát ngày càng rõ ràng dòng suy nghĩ và quá trình cảm giác của mình, với sự khách quan như từ góc nhìn của một người thứ ba. Khi làm được như vậy, bạn sẽ tạo ra một loại kiến thức sâu sắc do bạn tự khám phá ra và loại kiến thức này cuối cùng sẽ dẫn đến sự tự làm chủ bản thân.\n\nTạo ra các thói quen hữu ích cho tâm: Hãy tưởng tượng rằng bất cứ khi nào bạn gặp ai đó, ý nghĩ đầu tiên, theo bản năng, theo thói quen của bạn là, tôi muốn người này được hạnh phúc. Có những thói quen như vậy sẽ thay đổi mọi thứ ở nơi làm việc, vì ý tốt chân thành này sẽ được người khác cảm nhận một cách vô thức, và tạo ra loại tin tưởng dẫn đến những sự hợp tác có hiệu quả cao. Những thói quen như vậy có thể được rèn luyện để trở thành tự nhiên.\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 5, 4, 2, 2019, '120000.00', 0, '2021-05-02 07:00:58', '2021-05-05 00:29:10'),
(5, 'Biên Niên Cô Đơn', 2, '“Mất bao lâu để quên một người?!\n\nSau khi chia tay người cũ, mình mất hết một năm loay hoay trong mớ bòng bong cảm xúc trong lòng. Lúc đó không buồn, cũng chẳng quá đau khổ dằn vặt gì, vẫn cứ sống và làm việc bình thường, thậm chí làm việc còn nhiều hơn trước và thành công hơn trước.\n\nNhưng vết xước trong lòng chưa bao giờ lành lặn.\n\nMỗi khi đi ngang một con đường cũ, một quán ăn quen, một điều gì đó cứ nhói lên, rồi lại mất hút. Rõ ràng không thể gọi đó là cơn đau, chỉ là cái khẽ rùng mình của dĩ vãng.\n\nCó người nói cần một phần ba thời gian bên nhau để quên. Ví dụ yêu ba năm thì cần mất một năm mới có thể quên đi người đó. Xưa quen nhau ba năm, lúc hết một năm thì bắt đầu đi vào quỹ đạo cuộc sống bình thường, cơn lạnh dĩ vãng ít xuất hiện lại.\nChỉ có trái tim là chưa sẵn sàng cho một chuyến phiêu lưu ái tình mới.\n\nMà thử hỏi, khi chưa sẵn sàng, thì có chắc là lòng đã quên?”\n\nCuốn sách này là cái khẽ rùng mình của dĩ vãng đó, khi ghi lại một năm sau khi chia tay người cũ, người đã trao cho nhau nhẫn đính hôn và dự định chuyện tương lai lâu dài.\n\nNhiều người hỏi có tiếc nuối không, còn nhớ không và có muốn quay lại không, đều lắc đầu từ chối. Vì cái nhớ bây giờ là những hồi ức, là khoảnh khắc, là thời gian từng bên nhau, chứ còn người đó, bản thân đã lãng quên ít nhiều. Người đã xưa, chuyện đã cũ, muốn quay lại là điều không thể được. “Thiên kim nan mãi nhất hồi đầu”, ngàn lượng vàng không thể mua được một lần quay đầu nhìn lại, cũng là ý chỉ việc này.\n\nRồi nhiều năm sau đó, mới hiểu ra rằng khi chia tay, chúng ta từ bỏ một người tình và giữ lại một chuyện tình, người tình có thể qua đời, nhưng chuyện tình thì bất tử với thời gian.\n\nSuốt những năm dài sống một mình, tôi nhận ra nỗi cô đơn cũng có vẻ đẹp của riêng nó và từ bỏ việc chối bỏ nỗi cô đơn trong lòng. Làm bạn với chính sự trống trải đó lại càng gíup tôi trân trọng hơn khoảng khắc hạnh phúc mình có thể đón nhận đến.\n\nRồi cứ vậy, tôi ghi lại năm cô đơn nhất trong đời từng trải qua, đặt tên cho cuốn sách này là “Biên Niên Cô Đơn”, hi vọng rằng mọi người sẽ cảm thấy có một chút gì đó của bản thân khi đọc được.\n\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 1, 5, 1, 2020, '99000.00', 0, '2021-05-02 21:24:09', '2021-05-05 00:29:35'),
(6, 'Đứa Con Của Thời Tiết', 2, 'Tình thơ, gặp gỡ và chia ly là những vòng sóng đồng tâm trong thế giới Shinkai Makoto.\n\nTừng có cô Yuki chia tay Takao ở Khu vườn ngôn từ để đến dạy văn cho Mitsuha ở Your Name.\n\nNay lại có Mitsuha và Taki chia tay Your Name. để sang ĐỨA CON CỦA THỜI TIẾT, gặp gỡ các tâm sóng mới là Hina và Hodaka.\n\nĐứa con của thời tiết phác ra thương yêu cô đọng giữa hoang mang của đô thị lớn và ngặt nghèo hơn, là giữa hoang mang của một thời đại biến đổi khí hậu bấp bênh.\n\nVì một sự cố tình cờ, Hina được tạo hóa ban cho năng lực đặc biệt: làm nắng. Năng lực ấy càng thêm nhiệm màu khi đặt vào bối cảnh Nhật Bản hứng mưa triền miên, mưa đến mức vòm trời âm u trở thành cơm bữa, nước dâng gặm dần các đảo, và Tokyo có nguy cơ biến thành đô thị kênh đào.\n\nNhưng đến đây, phong cách song hành nhất quán của Shinkai lại trỗi dậy. Trong lạc có bi, trong hạnh phúc sẵn chia ly, được ban phép màu ắt phải đánh đổi. Đứa con của thời tiết cũng không thể tùy ý tắt bật nắng mưa mà không phải trả giá gì. Theo sau một lần làm nắng, là chất chứa hàng chuỗi ăn mòn, hối hận, mạo hiểm, giải cứu, và đằng đẵng cách xa.\n\nCũng như Your Name, ĐỨA CON CỦA THỜI TIẾT tiếp tục đan cài giữa truyền thống và hiện đại, huyền thoại và thực tế, nguy cơ và mộng ước, thiên tai và con người… nhưng có điểm khác là, lần đầu tiên hạnh phúc cá nhân đã được nhấn mạnh, nhân vật đã bứt mình khỏi tâm thế bao la vì mọi người.\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 6, 6, 1, 2021, '85000.00', 0, '2021-05-02 21:39:26', '2021-05-05 00:30:02'),
(7, 'Cho Tôi Xin Một Vé Đi Tuổi Thơ', 2, 'Truyện Cho tôi xin một vé đi tuổi thơ là sáng tác mới nhất của nhà văn Nguyễn Nhật Ánh. Nhà văn mời người đọc lên chuyến tàu quay ngược trở lại thăm tuổi thơ và tình bạn dễ thương của 4 bạn nhỏ. Những trò chơi dễ thương thời bé, tính cách thật thà, thẳng thắn một cách thông minh và dại dột, những ước mơ tự do trong lòng… khiến cuốn sách có thể làm các bậc phụ huynh lo lắng rồi thở phào. Không chỉ thích hợp với người đọc trẻ, cuốn sách còn có thể hấp dẫn và thực sự có ích cho người lớn trong quan hệ với con mình.\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 7, 7, 65, 2018, '40000.00', 24995, '2021-05-02 21:43:32', '2021-05-15 21:29:16'),
(8, 'Mắt Biếc', 2, 'Mắt biếc là một tác phẩm được nhiều người bình chọn là hay nhất của nhà văn Nguyễn Nhật Ánh. Tác phẩm này cũng đã được dịch giả Kato Sakae dịch sang tiếng Nhật để giới thiệu với độc giả Nhật Bản. \n\n“Tôi gửi tình yêu cho mùa hè, nhưng mùa hè không giữ nổi. Mùa hè chỉ biết ra hoa, phượng đỏ sân trường và tiếng ve nỉ non trong lá. Mùa hè ngây ngô, giống như tôi vậy. Nó chẳng làm được những điều tôi ký thác. Nó để Hà Lan đốt tôi, đốt rụi. Trái tim tôi cháy thành tro, rơi vãi trên đường về.”\n\n… Bởi sự trong sáng của một tình cảm, bởi cái kết thúc buồn, rất buồn khi xuyên suốt câu chuyện vẫn là những điều vui, buồn lẫn lộn …  \n\n \n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 7, 7, 44, 2019, '110000.00', 300, '2021-05-02 21:46:41', '2021-06-05 00:03:47'),
(9, 'Doraemon - Chú Mèo Máy Đến Từ Tương Lai Tập 0', 3, 'Doraemon là một trong những nhân vật truyện tranh nổi tiếng nhất thế giới, tại Việt Nam, tác phẩm cũng đã có gần 30 năm đồng hành cùng nhiều thế hệ độc giả.\n\nDẫu vậy, rất ít người biết rằng khởi đầu của tác phẩm Doraemon năm 1970 có đến 6 chương mở đầu khác nhau với nội dung xoay quanh chủ đề \"Doraemon đã đến với Nobita như thế nào?\". Đây là các chương truyện được tác giả Fujiko F Fujio sáng tác dành cho các tạp chí khác nhau với các đối tượng độc giả tiểu học Nhật Bản thời bấy giờ.\n\nNhân kỉ niệm 50 năm ra đời Doraemon, Nhà xuất bản Kim Đồng xin trân trọng giới thiệu đến bạn đọc ấn phẩm đặc biệt:\n\nDoraemon Vol.0 - Ấn phẩm tập hợp 6 chương truyện khởi đầu kể trên, được giữ nguyên tranh màu gốc, kèm theo đó là kí sự về quá trình tạo ra Doraemon được chính tác giả tâm sự và chia sẻ. Cùng rất nhiều tư liệu và những câu chuyện từ khi bộ truyện được phát hành dài kì khác. Ấn phẩm chắc chắn sẽ làm hài lòng những độc giả yêu mến chú mèo ú Doraemon suốt 50 năm qua.\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 8, 8, NULL, 2020, '50000.00', 71, '2021-05-05 06:22:34', '2021-06-10 18:12:10'),
(10, 'Thám Tử Lừng Danh Conan - Tập 98', 3, 'Sera Masumi tiếp tục thăm dò Haibara Ai và ở thế đối đầu với Okiya Subaru!\n\nTrong khi đó, Conan đã tiến đến gần chân tướng của “em gái ngoài lãnh địa” - Mary…!?\n\nHaneda Shukichi bất ngờ gặp án mạng tại buổi học nhóm shogi!\n\nVụ án diễn biến bất ngờ với nhiều khúc ngoặt để rồi cuối cùng, Akai Shuichi xuất hiện…!? Không dừng lại ở đó, tập 98 còn mang tới vụ án giải mật mã của một người giúp việc, nơi cuộc đua phá án giữa Conan và Heiji đã khởi phát từ mưu kế của Ooka Momiji!!\n\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 8, 9, NULL, 2021, '20000.00', 0, '2021-05-05 06:40:54', '2021-05-05 06:41:12'),
(11, 'Thanh Gươm Diệt Quỷ Tập 17: Những Người Kế Tục', 3, 'Đội diệt quỷ ùa vào thành Vô hạn sau khi Muzan tấn công. Shinobu chật vật đối đầu Thượng huyền nhị Doma, bởi vì độc của cô không có tác dụng. Kết cục, cô có thể trả thù được cho chị mình không…!? Trong khi đó, một con quỷ đã xuất hiện trước mặt Zenitsu…\n\nKOYOHARU GOTOUGE\n\n“Xin chào các bạn, tôi là Gotouge đây! Tập 17 đã ra lò rồi nè~\n\nCác trận chiến sẽ ngày càng khốc liệt hơn. Tôi không thích phải làm tổn thương các nhân vật yêu quý của mình chút nào, và như vậy các bạn đọc cũng sẽ rất buồn.\n\nNhưng đây là một thế giới khốc liệt, phải dùng cả tính mạng để chiến đấu nên mong các bạn hãy thứ lỗi. Tôi sẽ cố gắng dành hết tâm tình vào bộ truyện đến cuối cùng, nên mong các bạn sẽ tiếp tục ủng hộ!”\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 8, 10, NULL, NULL, '25000.00', 0, '2021-05-05 06:46:16', '2021-05-05 06:50:38'),
(12, 'One Piece - Tập 94 - \"Giấc Mơ Của Những Chiến Binh\"', 3, 'Sau sự việc hành quyết công khai Yasuie kế hoạch trả thù trở về tờ giấy trắng! Trong khi đó, hội Zoro còn phát hiện ra sự thật về trái “SMILE” và giận dữ tột độ!! Đã vậy các tù nhân trong khu mỏ còn phải đụng độ với một mối uy hiếp đáng sợ hơn gấp bội. Liệu họ sẽ xử trí ra !? Những chuyến phiêu liêu trên đại dương xoay quanh “ONE PIECE” lại bắt đầu!!\n\nEiichiro oda\n\nMấy chú ốc sên có vẻ ghét những thứ nhớp nháp, thành thử chả bao giờ thấy chúng quay trở lại con đường đã đi qua.\n\nCÁI GIỐNG ÍCH KỈ GÌ ĐÂU!!!\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 8, 11, NULL, 2021, '17000.00', 0, '2021-05-05 06:53:56', '2021-05-05 06:54:28'),
(13, 'One Punch Man - Tập 21', 3, NULL, 8, 12, NULL, NULL, '20000.00', 50, '2021-05-05 06:59:26', '2021-06-05 00:00:26'),
(14, 'Cẩm Nang Cấu Trúc Tiếng Anh', 4, 'Cuốn sách CẨM NANG CẤU TRÚC TIẾNG ANH gồm 25 phần, mỗi phần là một phạm trù kiến thức trong tiếng Anh được trình bày một cách ngắn gọn, đơn giản, cô đọng và hệ thống hoá dưới dạng sơ đồ, bảng biểu nhằm phát triển khả năng tư duy của người học và từ đó giúp người học nhớ kiến thức nhanh hơn và sâu hơn. Sau hầu hết các phần lí thuyết đều có 20-30 câu bài tập áp dụng để kiểm tra cũng như khắc sâu kiến thức cho người học. Tuy dày chưa đến 250 trang nhưng cuốn sách lại có thể bao trọn toàn bộ kiến thức từ đơn giản đến phức tạp cộng với cách tận dụng tối đa và áp dụng triệt để cách học tiếng Anh bằng sơ đồ tư duy.\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 9, 13, NULL, NULL, '98000.00', 0, '2021-05-15 20:40:15', '2021-05-15 20:40:15'),
(15, 'Tự Học 600 Chữ Kanji Căn Bản (Tái Bản 2017)', 4, 'Tự Học 600 Chữ Kanji Căn Bản (Tái Bản 2017)\n\nCó lẽ với những ai đã và đang học tiếng Nhật thì đều hiểu rằng Kanji (chữ Hán) là một phần không thể thiếu với người học tiếng Nhật. Không có chữ Kanji bạn không thể đọc sách báo tiếng Nhật để nâng cao khả năng ngôn ngữ của mình. Vì vậy, việc ôn tập và trau dồi vốn chữ Kanji là việc làm cần thiết xuyên suốt quá trình học của người học tiếng Nhật.\n\nTự Học 600 Chữ Kanji Căn Bản bao gồm 600 chữ Kanji căn bản thường dùng nhất trong cuộc sống, được chia làm 15 bài mỗi bài bao gồm 40 chữ Kanji được chia theo các cấp độ từ dễ đến khó.\n\nỞ cuốn sách này ngoài việc cung cấp các kiến thức liên quan tới chữ Kanji, cuốn sách còn đẩy mạnh vào việc luyện tập giúp bạn hình dung được cả cách dùng cũng như dễ ghi nhớ các chữ Kanji hơn nên cứ sau mỗi 10 chữ Kanji sẽ có phần luyện tập để củng cố kiến thức. Cuối mỗi bài lại có bài tập tổng hợp, và cuối sách sẽ có một vài đề thi thử chữ Kanji.\n\nVới cuốn sách Tự Học 600 Chữ Kanji Căn Bản người học sẽ có được những chữ Kanji cũng như những từ vựng căn bản thường dùng nhất trong đời sống sinh hoạt thường ngày cũng như có đủ vốn chữ Kanji để vượt qua kỳ thi năng lực tiếng Nhật N4.\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 6, 14, NULL, 2017, '105000.00', 0, '2021-05-15 20:50:09', '2021-05-15 20:50:09'),
(16, '25 Chuyên Đề Ngữ Pháp Tiếng Anh Trọng Tâm – (Tập 1)', 4, '25 Chuyên Đề Ngữ Pháp Tiếng Anh Trọng Tâm – (Tập 1)\n\nCác chuyên đề ngữ pháp trọng tâm được trình bày đơn giản, dễ hiểu cùng với hệ thống bài tập và từ vựng phong phú. Có tất cả 25 chuyên đề trong 2 tập sách, là tài liệu hữu ích cho học sinh, sinh viên, người đi làm, luyện thi cho các kỳ thi quốc gia, ôn luyện các chứng chỉ quốc tế và là tài liệu tham khảo cho giáo viên.\n\nHuy Hoàng Bookstore hân hạnh giới thiệu!\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 9, 13, NULL, 2018, '110000.00', 0, '2021-05-15 20:53:54', '2021-05-15 20:53:54'),
(17, '3500 Từ Vựng TOEIC Siêu Đẳng', 4, '3500 từ vựng TOEIC siêu đẳng\n\nCuốn sách nhỏ gọn chứa tới 3500 từ vựng TOEIC giúp người học đạt được mục tiêu TOEIC dễ dàng\n\nTOEIC (Test of English for international communication - Bài kiểm tra tiếng Anh giao tiếp Quốc tế) là bài kiểm tra tiếng Anh trong 2 tiếng đồng hồ, nhằm đánh giá trình độ giao tiếp tiếng Anh cơ bản theo chuẩn Quốc tế của một người học tiếng Anh như một ngoại ngữ.\n\nBạn là ai trong những trường hợp này:\n\nBạn đang là học sinh, muốn học thêm chứng chỉ TOEIC để nâng cao trình độ tiếng Anh của bản thân.\nBạn đang là sinh viên, bạn cần chứng chỉ TOEIC để đủ điều kiện ra trường hoặc bổ sung vào CV để xin việc dễ dàng và tăng cao sức cạnh tranh của mình trên thị trường lao động.\nBạn đang là người đi làm, bạn muốn thi TOEIC để có thể thăng chức, tăng lương và xây dựng một sự nghiệp vững chắc.\nNhưng: “Tôi học kém vì trí nhớ của tôi kém!”\n\nĐó là một lời biện minh vô cùng hợp lý khi mà kết quả học tập của bạn không cao. Và rồi, nhiều người học có ý nghĩ sai lầm rằng khả năng ghi nhớ tốt là năng khiếu hoặc tài năng mà một số người có một số người không. Những người nghĩ họ không có trí nhớ tốt từ bỏ việc cố gắng nhở đầy đủ thông tin vì họ nghĩ họ sẽ quên hết chúng. Hậu quả chắc chắn là việc có trí nhớ kém nghiễm nhiên trở thành lý do mà họ dùng để biện hộ cho thất bại. Cứ như thế, họ sẽ luôn luôn nhận lãnh những kết quả kém.\n\nTuy nhiên, nếu như chúng ta biết cách sử dụng những kỹ thuật tận dụng được trí nhớ của mình thì việc học của bạn hoàn toàn có thể thay đổi được và bạn cũng có thể có trí nhớ siêu đẳng.\n\nĐiều đầu tiên bạn nên hiểu là không hề tồn tại trí nhớ tốt hay trí nhớ kém, mà chỉ tồn tại trí nhớ được rèn luyện và trí nhớ không được rèn luyện. Theo chuyên gia về trí nhớ Harry Lorayne, những người có khả năng nhớ thông tin phi thường không hề có bộ não khác biệt với chúng ta. Thay vào đó, họ sở hữu những kỹ thuật tận dụng được trí nhớ của họ. Bởi thế, xin nhớ rằng trí nhớ không phải là một năng khiếu. Mỗi người trong chúng ta đều sở hữu một trí nhớ phi thường tự nhiên mà chúng ta chỉ cần học cách tận dụng nó.\n\nBạn mong muốn đạt điểm cao trong kỳ thi TOEIC, nhưng vấn đề đặt ra là:\n\nBạn có biết có bao nhiêu từ vựng thường xuất hiện trong bài thi TOEIC?\nLượng từ vựng lớn, làm sao để ghi nhớ hết trong thời gian ngắn?\nLuyện thi TOEIC bạn cần trang bị cho mình những bí quyết nào?\nBạn muốn nhanh chóng hoàn thành mục tiêu TOEIC của mình. Làm thế nào để “gạt bỏ” những vấn đề này. Bạn có tim chỉ với một cuốn bí kíp nhỏ gọn là bạn đã giải quyết “triệt để” những khó khăn này? Cuốn sách “3500 từ vựng TOEIC siêu đẳng\" được biên soạn với mục tiêu giúp bạn học từ vựng tiếng Anh hiệu quả nhất cho những người muốn tăng cường khả năng ghi nhớ tối ưu tiềm năng của não bộ, sau đó sử dụng đúng và nhạy bén những gì mình nhớ để áp dụng vào giao tiếp thực tế. Cuốn sách tập trung vào 3500 từ vựng TOEIC được sử dụng nhiều nhất trong các bài thi TOEIC, mặt khác trau dồi thêm cho các bạn học viên có thêm các kỹ thuật để ghi nhớ từ vựng một cách tối ưu nhất.\n\n“3500 Từ vựng TOEIC siêu đẳng” mang lại cho các bạn những lợi ích gì?\n\nCung cấp 3500 từ vựng được sử dụng nhiều nhất trong kỳ thi TOEIC\n\nCuốn sách này tập trung vào 3500 từ vựng TOEIC được sử dụng nhiều nhất trong bài thi TOEIC. Nếu những cuốn sách từ vựng khác chỉ đưa ra các từ rồi dịch nghĩa thì đến với cuốn này các bạn sẽ được học từ vựng qua cả câu. Mỗi từ vựng, cuốn sách vừa có hướng dẫn phát âm theo US và UK, rồi đến phần dịch nghĩa của từ. Tiếp sau đó là ví dụ tiếng Anh và tiếng Việt đi kèm để các bạn biết cách áp dụng từ vựng.\n\nPhương pháp ghi nhớ từ vựng tiếng Anh siêu đẳng\n\nMột trong những điểm đặc biệt mà cuốn sách mang đến cho người học chính là phương pháp ghi nhớ từ vựng siêu đẳng của người Do Thái. Dưới đây là 7 bí quyết học từ vựng tiếng Anh của người Do Thái, các bạn hãy đọc và ứng dụng vào việc học từ vựng cùng cuốn sách này nhé.\n\nChọn từ vựng gây “sốc”\nChọn từ vựng có tính chất hài hước\nHọc từ vựng kèm với âm nhạc\nHọc từ ngữ với ý nghĩa riêng với bản thân\nTừ ngữ có tính phát hiện\nKết hợp từ vựng với hình ảnh\nĐọc những tài liệu đáng tin cậy\nNgoài 7 bí quyết này người học còn biết được cách nhớ từ vựng tiếng Anh thông qua sơ đồ tư duy. Với công cụ này các bạn dễ dàng tập trung ghi nhớ và tăng được khả năng sáng tạo thông qua những sơ đồ này. Vừa có trong tay bí quyết và công cụ, lượng từ vựng có lớn tới đâu chỉ cần bạn kiên trì là đã có thể vượt qua dễ dàng.\n\nBí quyết luyện thi TOEIC đạt điểm cao\n\nKhông chỉ cung cấp bí quyết học từ vựng, với cuốn sách này các bạn còn sở hữu được bí quyết luyện thi TOEIC đạt 800/990 điểm.\n\nNâng cao và bồi dưỡng từ vựng về những tình huống điển hình trong bài thi TOEIC\nĐọc càng nhiều càng tốt\nLàm quen với các dạng bài thi TOEIC và hướng dẫn của từng phần\nTrả lời hết tất cả các câu hỏi có trong đề thi\nTrên đây là những bí quyết cơ bản được đúc rút từ kinh nghiệm làm bài của các thí sinh đạt trên 800 điểm TOEIC. Để biết rõ hơn về các bí quyết các bạn hãy mở những trang đầu của cuốn sách và nghiên cứu chúng trước khi bắt tay làm bài nhé.\n\nTrình bày khoa học\n\nVới mong muốn mang lại sự thuận tiện tối đa cho người học, cuốn sách sắp xếp từ vựng theo thứ tự Alphabet. Qua đó các bạn dễ dàng tra cứu và ôn tập. Ngoài ra ở phần cuối sách còn có thêm bảng động từ bất quy tắc và phần học từ vựng thông qua hình ảnh. Qua đó các bạn sẽ dễ dàng nâng cao được vốn từ của mình.\n\nCuốn sách “3500 từ vựng TOEIC siêu đẳng” vừa cung cấp 3500 từ vựng được sử dụng nhiều nhất trong kỳ thi TOEIC, vừa giúp các bạn trau dồi thêm các kỹ thuật để ghi nhớ từ vựng một cách tối ưu nhất. Hi vọng rằng cuốn sách này sẽ giúp các bạn vượt qua bài thi TOEIC một cách dễ dàng.\n\nCác bạn đang ôn thi TOEIC hãy tham khảo ngay cuốn sách này nhé!\n\n \n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 6, 15, NULL, 2018, '119000.00', 100, '2021-05-15 20:57:22', '2021-05-15 21:12:36'),
(18, 'Đắc Nhân Tâm (Khổ Lớn)', 5, 'Đắc nhân tâm của Dale Carnegie là quyển sách duy nhất về thể loại self-help liên tục đứng đầu danh mục sách bán chạy nhất (best-selling Books) do báo The New York Times bình chọn suốt 10 năm liền. Được xuất bản năm 1936, với số lượng bán ra hơn 15 triệu bản, tính đến nay, sách đã được dịch ra ở hầu hết các ngôn ngữ, trong đó có cả Việt Nam, và đã nhận được sự đón tiếp nhiệt tình của đọc giả ở hầu hết các quốc gia.\n\nLà quyển sách đầu tiên có ảnh hưởng làm thay đổi cuộc đời của hàng triệu người trên thế giới, Đắc Nhân Tâm là cuốn sách đem lại những giá trị tuyệt vời cho người đọc, bao gồm những lời khuyên cực kì bổ ích về cách ứng xử trong cuộc sống hàng ngày. Sức lan toả của quyển sách vô cùng rộng lớn – với nhiều tầng lớp, đối tượng.\nĐắc Nhân Tâm không chỉ là là nghệ thuật thu phục lòng người, Đắc Nhân Tâm còn đem lại cho độc giả góc nhìn, suy nghĩ sâu sắc về việc giao tiếp ứng xử.\n\nTriết lý của Đắc Nhân Tâm là hiểu mình, thành thật với chính mình, từ đó hiểu biết và quan tâm đến những người xung quanh để nhìn ra và khơi gợi những tiềm năng ẩn khuất nơi họ, giúp họ phát triển lên một tầm cao mới. Đây chính là nghệ thuật cao nhất về con người và chính là ý nghĩa sâu sắc nhất đúc kết từ những nguyên tắc vàng của Dale Carnegie.\n\nĐây là phiên bản Đắc Nhân Tâm đặc biệt, bìa cứng dày 320 trang, do First News thực hiện và Nhà xuất bản Tổng hợp TP.HCM ấn hành.\n\nMột số nguyên tắc – Nghệ thuật ứng xử căn bản:\n\nNguyên tắc 1: Không chỉ trích, oán trách hay than phiền.\n\nNguyên tắc 2: Thành thật khen ngợi và biết ơn người khác.\n\nNguyên tắc 3: Gợi cho người khác ý muốn thực hiện điều bạn muốn họ làm.\n\n6 cách tạo thiện cảm:\n\nNguyên tắc 4: Thật lòng quan tâm đến người khác.\n\nNguyên tắc 5: Hãy mỉm cười!\n\nNguyên tắc 6: Luôn nhớ rằng tên của người khác là một âm thâm êm đềm, thân thương và quan trọng nhất đối với họ.\n\nNguyên tắc 7: Biết lắng nghe và khuyến khích người khác nói về vấn đề của họ.\n\nNguyên tắc 8: Nói về điều người khác quan tâm.\n\nNguyên tắc 9: Thật lòng làm cho người khác cảm thấy họ quan trọng.\n\nBáo chí nhắc gì về “Đắc Nhân Tâm”\n\n“Nói đến sách nghệ thuật ứng xử thì không thể không nhắc đến \"Đắc nhân tâm\" của Dale Carnegie. Đây là một trong những cuốn sách gối đầu của nhiều thế hệ đi trước và ngày nay. Với chặng đường hơn 80 năm kể từ khi lần đầu được xuất bản, \"Đắc nhân tâm\" đã mang đến cho chúng ta bài học vô cùng giá trị đó là nghệ thuật ứng xử để được lòng người. \"Đắc nhân tâm\" là quyển sách nổi tiếng và bán chạy nhất và có mặt ở hàng trăm quốc gia khác nhau, và hơn thế nữa đây còn là quyển sách liên tục đứng đầu danh mục sách bán chạy nhất do thời báo NewYork Times bình chọn trọng suốt 10 năm liền.” – C, 3 cuốn sách nên đọc đi đọc lại trong đời để ngẫm về cuộc sống\n\n“Đắc Nhân Tâm – của tác giả Dale Carnegie là quyển sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh hưởng nhất của mọi thời đại. Tác phẩm đã được chuyển ngữ sang hầu hết các thứ tiếng trên thế giới và có mặt ở hàng trăm quốc gia. Một khám phá rất thú vị dành cho các bậc phụ huynh khi đọc cuốn sách này là biết cách lắng nghe trò chuyện cùng con, cách trị chứng tè dầm của trẻ nhỏ, hay cách làm cho một đứa trẻ từ quậy phá thành ngoan ngoãn… Đó hẳn là những câu chuyện nuôi dạy trẻ rất đúng, rất hay, rất đời thường đáng để bạn đọc suy ngẫm và chiêm nghiệm”. – M, Đắc nhân tâm: ‘Cha đã quên’ nhắc những điều nên nhớ\n\n“Đắc Nhân Tâm” đưa ra những lời khuyên về cách cư xử, ứng xử và giao tiếp với mọi người để đạt được thành công trong cuộc sống. Đây được coi là một trong những cuốn sách nổi tiếng nhất, bán chạy nhất và có tầm ảnh hưởng nhất mọi thời đại mà bạn không nên bỏ qua.” – C, 20 câu nói vàng đáng nhớ từ tuyệt tác để đời “Đắc Nhân Tâm”.\n\nVề tác giả\n\nDale Breckenridge Carnegie (24 tháng 11 năm 1888 – 1 tháng 11 năm 1955) là một nhà văn và nhà thuyết trình Mỹ và là người phát triển các lớp tự giáo dục, nghệ thuật bán hàng, huấn luyện đoàn thể, nói trước công chúng và các kỹ năng giao tiếp giữa mọi người. Ra đời trong cảnh nghèo đói tại một trang trại ở Missouri, ông là tác giả cuốn Đắc Nhân Tâm, được xuất bản lần đầu năm 1936, một cuốn sách thuộc hàng bán chạy nhất và được biết đến nhiều nhất cho đến tận ngày nay. Ông cũng viết một cuốn tiểu sử Abraham Lincoln, với tựa đề Lincoln con người chưa biết, và nhiều cuốn sách khác.\n\nCarnegie là một trong những người đầu tiên đề xuất cái ngày nay được gọi là đảm đương trách nhiệm, dù nó chỉ được đề cập tỉ mỉ trong tác phẩm viết của ông. Một trong những ý tưởng chủ chốt trong những cuốn sách của ông là có thể thay đổi thái độ của người khác khi thay đổi sự đối xử của ta với họ.', 2, 16, NULL, 2016, '76000.00', 0, '2021-05-15 21:02:14', '2021-05-15 21:02:14'),
(19, 'Tôi Tự Học', 5, 'Tôi Tự Học\n\nSách “Tôi tự học” của tác giả Nguyễn Duy Cần đề cập đến khái niệm, mục đích của học vấn đối với con người đồng thời nêu lên một số phương pháp học tập đúng đắn và hiệu quả. Tác giả cho rằng giá trị của học vấn nằm ở sự lĩnh hội và mở mang tri thức của con người chứ không đơn thuần thể hiện trên bằng cấp. Trong xã hội ngày nay, không ít người quên đi ý nghĩa đích thực của học vấn, biến việc học của mình thành công cụ để kiếm tiền nhưng thực ra nó chỉ là phương tiện để  đưa con người đến thành công mà thôi. Bởi vì học không phải để lấy bằng mà học còn để “biết mình” và để “đối nhân xử thế”.\n\nCuốn sách này tuy đã được xuất bản từ rất lâu nhưng giá trị của sách vẫn còn nguyên vẹn. Những tư tưởng, chủ đề của sách vẫn phù hợp và có thể áp dụng trong đời sống hiện nay. Thiết nghĩ, cuốn sách này rất cần cho mọi đối tượng bạn đọc vì không có giới hạn nào cho việc truy tầm kiến thức, việc học là sự nghiệp lâu dài của mỗi con người. Đặc biệt, cuốn sách là một tài liệu quý để các bạn học sinh – sinh viên tham khảo, tổ chức lại việc học của mình một cách hợp lý và khoa học. Các bậc phụ huynh cũng cần tham khảo sách này để định hướng và tư vấn cho con em mình trong quá trình học tập.\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 7, 17, NULL, 2017, '47500.00', 100, '2021-05-15 21:05:09', '2021-05-15 21:27:36'),
(20, 'Đời Ngắn Đừng Ngủ Dài (Tái Bản)', 5, '“Mọi lựa chọn đều giá trị. Mọi bước đi đều quan trọng. Cuộc sống vẫn diễn ra theo cách của nó, không phải theo cách của ta. Hãy kiên nhẫn. Tin tưởng. Hãy giống như người thợ cắt đá, đều đặn từng nhịp, ngày qua ngày. Cuối cùng, một nhát cắt duy nhất sẽ phá vỡ tảng đá và lộ ra viên kim cương. Người tràn đầy nhiệt huyết và tận tâm với việc mình làm không bao giờ bị chối bỏ. Sự thật là thế.”\n\nBằng những lời chia sẻ thật ngắn gọn, dễ hiểu về những trải nghiệm và suy ngẫm trong đời, Robin Sharma tiếp tục phong cách viết của ông từ cuốn sách Điều vĩ đại đời thường để mang đến cho độc giả những bài viết như lời tâm sự, vừa chân thành vừa sâu sắc.\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 7, 18, 18, 2018, '75000.00', 0, '2021-05-15 21:07:21', '2021-05-15 21:07:21'),
(21, 'Kỷ Luật Tự Giác', 5, 'TỰ GIÁC BAO NHIÊU, TỰ DO BẤY NHIÊU\n\nTheo bạn thì, thế nào là tự do?\n\nLà có thể nằm ườn trên ghế sô pha xem phim, ôm điện thoại lướt mạng cả ngày?\n\nHay là được ăn thoải mái các thể loại đồ ăn nhanh, trà sữa… bất chấp ảnh hưởng của chúng tới sức khỏe?\n\nTrời mưa thì tự cho phép bản thân nghỉ làm, thích đồ gì thì mua luôn đồ nấy, dù cho chưa đến cuối tháng đã hết sạch tiền?\n\nNhững điều trên trông thì có vẻ thoải mái thật đấy, nhưng dần dần bạn sẽ nhận ra cuộc sống của mình ngày càng mơ hồ, sợ sệt, bởi bạn không có SỰ LỰA CHỌN. Lãng phí thời gian, tiền bạc vô ích chỉ càng tạo nên sự chậm chạp trong tư duy, bệnh tật cho cơ thể và sự cằn cỗi trong tâm hồn mà thôi.\n\nKÝ LUẬT TỰ GIÁC, cuốn sách đã thành công chỉnh đốn lối sống của hàng triệu người trẻ Trung Quốc, sẽ giúp bạn hiểu: “Tự do” thực sự không phải là tùy theo ý thích, mà là tự mình làm chủ.\n\nCàng tự giác thì càng có nhiều quyền lựa chọn. Một ngày, hai ngày, hay thậm chí vài tháng chưa thấy gì, nhưng một năm, hai năm, 10 năm, 20 năm sau những người tự giác và những người không tự giác sẽ bước trên những con đường hoàn toàn khác nhau. Bởi vì người càng tự giác càng hiểu mình thực sự muốn gì, nên mới không cần lãng phí thời gian và sức lực vào những chuyện vô nghĩa.\n\nTheodore Roosevelt cũng từng nói: \"Có một kiểu phẩm chất có thể giúp chúng ta lột xác tỏa sáng trong cuộc đời bình thường. Phẩm chất đó không phải là tư chất trời cho, không phải nhờ giáo dục, cũng không phải IQ, mà là SỰ TỰ GIÁC\". 99% thành công trên thế giới này đều không phải là ngẫu nhiên. Phía sau hào quang luôn là sự kiên trì tự giác không ngừng nghỉ.\n\nKỶ LUẬT TỰ GIÁC là trao cho mình quyền đặt ra quy tắc trò chơi, còn lười biếng là trao quyền đặt quy tắc cho người khác. Bạn chọn cái nào?\n\n\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', 10, 19, NULL, 2020, '84000.00', 0, '2021-05-15 21:11:22', '2021-05-15 21:11:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `book_receiveds`
--

CREATE TABLE `book_receiveds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quatity` int(11) NOT NULL,
  `unit_price` decimal(18,0) NOT NULL,
  `amount` decimal(18,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `book_receiveds`
--

INSERT INTO `book_receiveds` (`id`, `book_id`, `book_name`, `quatity`, `unit_price`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sách Tài Chính Cá Nhân Cho Người Việt Nam - Tặng Khóa học Online về Tài chính', 100000, '50000', '5000000000', '2021-05-04 17:21:28', '2021-05-04 17:21:28'),
(2, 2, 'Payback Time - Ngày Đòi Nợ', 100, '20000', '2000000', '2021-05-04 17:21:57', '2021-05-04 17:21:57'),
(3, 17, '3500 Từ Vựng TOEIC Siêu Đẳng', 100, '15000', '1500000', '2021-05-15 21:12:36', '2021-05-15 21:12:36'),
(4, 9, 'Doraemon - Chú Mèo Máy Đến Từ Tương Lai Tập 0', 100, '8000', '800000', '2021-05-15 21:25:34', '2021-05-15 21:25:34'),
(5, 7, 'Cho Tôi Xin Một Vé Đi Tuổi Thơ', 25000, '100', '2500000', '2021-05-15 21:25:51', '2021-05-15 21:25:51'),
(6, 3, 'Đừng Để Mất Bò - 7 Bước Quản Lý Cửa Hàng Hiệu Quả Và Chống Thất Thoát', 100, '14000', '1400000', '2021-05-15 21:26:44', '2021-05-15 21:26:44'),
(7, 19, 'Tôi Tự Học', 100, '10000', '1000000', '2021-05-15 21:27:36', '2021-05-15 21:27:36'),
(8, 13, 'One Punch Man - Tập 21', 50, '10000', '500000', '2021-06-05 00:00:26', '2021-06-05 00:00:26'),
(9, 8, 'Mắt Biếc', 300, '30000', '9000000', '2021-06-05 00:03:47', '2021-06-05 00:03:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Sách kinh tế', '2021-05-02 02:26:26', '2021-05-02 02:26:26'),
(2, 'Sách văn học', '2021-05-02 21:21:03', '2021-05-02 21:21:03'),
(3, 'Truyện Tranh, Manga, Comic', '2021-05-05 06:18:43', '2021-05-05 06:18:43'),
(4, 'Sách học ngoại ngữ', '2021-05-15 20:26:55', '2021-05-15 20:26:55'),
(5, 'Sách kỹ năng sống', '2021-05-15 20:58:49', '2021-05-15 20:58:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `book_id`, `url`, `priority`, `created_at`, `updated_at`) VALUES
(1, 1, 'images\\2d35f5288ea643e3768c8f3361cafa5a.jpg', 1, '2021-05-02 02:52:30', '2021-05-02 02:52:30'),
(2, 2, 'images\\94b39d773b28290e9f4ed1daa53449eb.jpg', 1, '2021-05-02 06:25:05', '2021-05-02 06:25:05'),
(3, 3, 'images\\7bb774673206d0b3f70fe909c0006a96.jpg', 1, '2021-05-02 06:28:39', '2021-05-02 06:28:39'),
(4, 4, 'images\\21a822e8f8bd4629af75a179b1d6d23c.jpg', 1, '2021-05-02 07:00:59', '2021-05-02 07:00:59'),
(5, 5, 'images\\4df230b5dbd95ef93e67d0b18df28d7a.jpg', 1, '2021-05-02 21:24:09', '2021-05-02 21:24:09'),
(6, 6, 'images\\d9c72609e4fbdb33632000be607c4d04.jpg', 1, '2021-05-02 21:39:26', '2021-05-02 21:39:26'),
(7, 7, 'images\\e17ddc42fbf8bf15b1958222ed1939dc.jpg', 1, '2021-05-02 21:43:32', '2021-05-02 21:43:32'),
(8, 8, 'images\\60031f112d30ed96bde76d40b5b263dc.jpg', 1, '2021-05-02 21:46:41', '2021-05-02 21:46:41'),
(9, 9, 'images\\d64951cc8debce41c76a9c0e0195389e.jpg', 1, '2021-05-05 06:22:34', '2021-05-05 06:22:34'),
(10, 10, 'images\\4d4166c4fee360442889f320c84a12c5.jpg', 1, '2021-05-05 06:40:55', '2021-05-05 06:40:55'),
(11, 11, 'images\\0cdb376b70f834484c73ddef878ac92a.jpg', 1, '2021-05-05 06:46:16', '2021-05-05 06:46:16'),
(12, 12, 'images\\968c9e1b215272844636e42d8475a5be.jpg', 1, '2021-05-05 06:53:56', '2021-05-05 06:53:56'),
(13, 13, 'images\\3181806b154210acbb9c82c4f6fbb489.jpg', 1, '2021-05-05 06:59:26', '2021-05-05 07:05:23'),
(14, 14, 'images\\617e1165b21f498aea14cfd110bd5f10.jpg', 1, '2021-05-15 20:40:15', '2021-05-15 20:40:15'),
(15, 15, 'images\\tu-hoc-600-chu-kanji-can-ban.u5168.d20170706.t084653.230200.jpg', 1, '2021-05-15 20:50:09', '2021-05-15 20:50:09'),
(16, 16, 'images\\18dca42a5cf75f6b8a603caf80bbf9c9.jpg', 1, '2021-05-15 20:53:55', '2021-05-15 20:53:55'),
(17, 17, 'images\\4159287132f963b30857f86a53e5ba0c.jpg', 1, '2021-05-15 20:57:23', '2021-05-15 20:57:23'),
(18, 18, 'images\\d340edda2b0eacb7ddc47537cddb5e08.jpg', 1, '2021-05-15 21:02:15', '2021-05-15 21:02:15'),
(19, 19, 'images\\01be7144bbbc5dfa6c68383191dbf518.jpg', 1, '2021-05-15 21:05:10', '2021-05-15 21:05:10'),
(20, 20, 'images\\19de0644beef19b9b885d0942f7d6f25.jpg', 1, '2021-05-15 21:07:22', '2021-05-15 21:07:22'),
(21, 21, 'images\\308986aa2c17293af227162874ad24a3.jpg', 1, '2021-05-15 21:11:22', '2021-05-15 21:11:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(296, '2014_10_12_000000_create_users_table', 1),
(297, '2014_10_12_100000_create_password_resets_table', 1),
(298, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(299, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(300, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(301, '2016_06_01_000004_create_oauth_clients_table', 1),
(302, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(303, '2019_08_19_000000_create_failed_jobs_table', 1),
(304, '2021_03_16_230652_create_posts_table', 1),
(305, '2021_03_23_131706_create_categories_table', 1),
(306, '2021_03_24_230422_create_roles_table', 1),
(307, '2021_04_06_010600_create_books_table', 1),
(308, '2021_04_08_133136_create_authors_table', 1),
(309, '2021_04_11_085454_create_images_table', 1),
(310, '2021_04_19_062743_create_book_receiveds_table', 1),
(311, '2021_04_25_132539_create_bills_table', 1),
(312, '2021_04_25_134428_create_bill_details_table', 1),
(313, '2021_04_29_013613_create_revenue_months_table', 1),
(314, '2021_05_02_015320_create_nxbs_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nxbs`
--

CREATE TABLE `nxbs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nxb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nxbs`
--

INSERT INTO `nxbs` (`id`, `nxb_name`, `created_at`, `updated_at`) VALUES
(1, 'Nhà Xuất Bản Phụ Nữ', '2021-05-02 02:27:29', '2021-05-02 02:27:29'),
(2, 'Nhà Xuất Bản Tổng hợp TP.HCM', '2021-05-02 03:41:16', '2021-05-02 03:41:16'),
(3, 'Nhà Xuất Bản Văn Hóa Văn nghệ', '2021-05-02 06:23:49', '2021-05-02 06:23:49'),
(4, 'Nhà Xuất Bản Đà Nẵng', '2021-05-02 06:26:46', '2021-05-02 06:26:46'),
(5, 'Nhà Xuất Bản Lao Động', '2021-05-02 06:58:47', '2021-05-02 06:58:47'),
(6, 'Nhà Xuất Bản Hồng Đức', '2021-05-02 21:37:54', '2021-05-02 21:37:54'),
(7, 'Nhà Xuất Bản Trẻ', '2021-05-02 21:42:00', '2021-05-02 21:42:00'),
(8, 'Nhà Xuất Bản Kim Đồng', '2021-05-05 06:21:04', '2021-05-05 06:21:04'),
(9, 'Nhà Xuất Bản Đại Học Sư Phạm', '2021-05-15 20:34:06', '2021-05-15 20:34:06'),
(10, 'Nhà Xuất Bản Thế Giới', '2021-05-15 21:09:05', '2021-05-15 21:09:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('4300fe74201f3702bf74de15f880ac0a5ed0b8d84d1edabacb18d4fb3b563ec79c978813b0eff080', 2, 1, 'app', '[]', 0, '2021-05-07 20:43:59', '2021-05-07 20:43:59', '2022-05-08 03:43:59'),
('61be550b10e9ab863d4edfa8fd0762cf0506855fc2a83766b9546869561a89ec60c3efef726a1209', 2, 1, 'app', '[]', 0, '2021-06-05 03:16:49', '2021-06-05 03:16:49', '2022-06-05 10:16:49'),
('b52c8f6f8e7851367e658a1791d065fd14659200250efe0f0ab95071c683f7ced38d571913c1fa91', 2, 1, 'app', '[]', 0, '2021-05-07 21:26:06', '2021-05-07 21:26:06', '2022-05-08 04:26:06'),
('cb7ec5569fa06b482a230893719ffc6a7b9745969d6e2aa5d388d572ca68805f72410d5188acb314', 1, 1, 'app', '[]', 0, '2021-05-02 04:48:03', '2021-05-02 04:48:03', '2022-05-02 11:48:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'SPOHeFQIhvdCAMYQmOvejqyQ7sV4bgvRwt8eCgVN', NULL, 'http://localhost', 1, 0, 0, '2021-05-02 04:47:51', '2021-05-02 04:47:51'),
(2, NULL, 'Laravel Password Grant Client', 'HAI8YeXlg67YHzm7YORK4T7LCKHqSJv7pZ4iInE8', 'users', 'http://localhost', 0, 1, 0, '2021-05-02 04:47:51', '2021-05-02 04:47:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-05-02 04:47:51', '2021-05-02 04:47:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `revenue_months`
--

CREATE TABLE `revenue_months` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `purchase` decimal(18,0) NOT NULL,
  `sale` decimal(18,0) NOT NULL,
  `total` decimal(18,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `revenue_months`
--

INSERT INTO `revenue_months` (`id`, `month`, `year`, `purchase`, `sale`, `total`, `created_at`, `updated_at`) VALUES
(1, 5, 2021, '5009200000', '2048863000', '-2960337000', '2021-05-04 17:21:28', '2021-05-25 02:56:07'),
(2, 6, 2021, '9500000', '937000', '-8563000', '2021-06-04 23:59:52', '2021-06-10 18:12:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(11) NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `phone_number`, `birthday`, `gender`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'batman3441', 'quangvinh@gmail.com', NULL, '$2y$10$o5UoOdp3DYc0VSDMMUj2/.QMAXaubBXeYE2klaCPLWjwq36HFrXQa', 1, NULL, NULL, 0, NULL, '2021-05-02 04:45:07', '2021-05-07 18:07:00'),
(2, 'Văn A', 'quangvinh2@gmail.com', NULL, '$2y$10$4W0EvibLP7lZqXuCgAcZSu1Z0K6gJ3BwhN1tCOvdY9HGLbloCqnzG', 1, NULL, NULL, 0, NULL, '2021-05-07 20:43:36', '2021-05-15 21:29:36');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `book_receiveds`
--
ALTER TABLE `book_receiveds`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nxbs`
--
ALTER TABLE `nxbs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `revenue_months`
--
ALTER TABLE `revenue_months`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `book_receiveds`
--
ALTER TABLE `book_receiveds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT cho bảng `nxbs`
--
ALTER TABLE `nxbs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `revenue_months`
--
ALTER TABLE `revenue_months`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
