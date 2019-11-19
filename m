Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 172DD1011BB
	for <lists+kexec@lfdr.de>; Tue, 19 Nov 2019 04:13:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MnJCwK12xINgjKk8bLcghZHtpXJR137DzwJIOUT32nI=; b=f1F
	XfjSR5G/mXDleEP5xE6cAlX49j45kMjkWq468NneTvxoTPyCwzjs9+bk7QJLrhxJymQy8k+Wzd/tv
	M9Kqcer+a9BrpZ7g/5DPI+wsQkF9TyibeLI6K/jrjtXN1wnfxjLwsIlnl0ExTEzXYhx7n9W7bolv9
	Dm1u7N2etNgBUuNUX3BGVU9t6D5TbWus5JdQAaR56QNt2ULLdYuJJUMy/8QDZgIEyJmX4xptrT6Yn
	966TPddjMqj7YvKQbOW9aE5iis94nqboUjOydkL2nOb2KPTxMCj8g5NAiGLxdyaB+LUfhsnmIvmAG
	GD00jWke/lYI7mtW5Qds44g1w/95I7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWtxR-0000ir-AT; Tue, 19 Nov 2019 03:13:37 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWtxJ-0000i0-Lh
 for kexec@lists.infradead.org; Tue, 19 Nov 2019 03:13:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574133205;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=VHrKzvLRSWhBdJNtNp42pVaYal9vlkxIuJ28CJA4FBE=;
 b=Uwno4S1nA3z9p7orCLepuy/nEn7G2tpWuF1UXFK0ovgf0HtRzEBfYdXXvqJ1wUPCSAsh/8
 a6iSIEigeH7GorcU+qpmpJ8Sp1cxVUCw6OSTe1HlZsVoNYSFFzQUxdzEU2jsvnjYJHErGo
 zuXF/JjbYrMFzz211vKIYkBUDQcoMzM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-105-pO18w3Q5NoqDWeCBD8BV2w-1; Mon, 18 Nov 2019 22:11:32 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B634F1800D7D;
 Tue, 19 Nov 2019 03:11:31 +0000 (UTC)
Received: from mylaptop.redhat.com (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3C423610B0;
 Tue, 19 Nov 2019 03:11:29 +0000 (UTC)
From: Pingfan Liu <piliu@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH] fix bug in is_dumpable_file()
Date: Tue, 19 Nov 2019 11:11:17 +0800
Message-Id: <1574133077-5436-1-git-send-email-piliu@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: pO18w3Q5NoqDWeCBD8BV2w-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_191329_788002_5E974046 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Pingfan Liu <piliu@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

is_dumpable_file() is inconsistent with write_kdump_bitmap_file().
In the former one, bitmap->offset takes account for the header. But the
later one does not.

It makes things more mussy where info->bitmap1/bitmap2's offset do not
account for header, while info->bitmap_memory does.

Making all of these consistent by not accounting for header.

Signed-off-by: Pingfan Liu <piliu@redhat.com>
---
 makedumpfile.c | 5 +----
 makedumpfile.h | 5 +++--
 sadump_info.c  | 4 ++--
 3 files changed, 6 insertions(+), 8 deletions(-)

diff --git a/makedumpfile.c b/makedumpfile.c
index d76a435..496e212 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -3637,7 +3637,6 @@ initialize_bitmap_memory(void)
 	struct disk_dump_header	*dh;
 	struct kdump_sub_header *kh;
 	struct dump_bitmap *bmp;
-	off_t bitmap_offset;
 	off_t bitmap_len, max_sect_len;
 	mdf_pfn_t pfn;
 	int i, j;
@@ -3647,8 +3646,6 @@ initialize_bitmap_memory(void)
 	kh = info->kh_memory;
 	block_size = dh->block_size;
 
-	bitmap_offset
-	    = (DISKDUMP_HEADER_BLOCKS + dh->sub_hdr_size) * block_size;
 	bitmap_len = block_size * dh->bitmap_blocks;
 
 	bmp = malloc(sizeof(struct dump_bitmap));
@@ -3667,7 +3664,7 @@ initialize_bitmap_memory(void)
 	bmp->file_name = info->name_memory;
 	bmp->no_block  = -1;
 	memset(bmp->buf, 0, BUFSIZE_BITMAP);
-	bmp->offset = bitmap_offset + bitmap_len / 2;
+	bmp->offset = bitmap_len / 2;
 	info->bitmap_memory = bmp;
 
 	if (dh->header_version >= 6)
diff --git a/makedumpfile.h b/makedumpfile.h
index 24b2f69..3c02e83 100644
--- a/makedumpfile.h
+++ b/makedumpfile.h
@@ -1171,6 +1171,7 @@ struct dump_bitmap {
 	int		no_block;
 	char		*file_name;
 	char		*buf;
+	/* offset in bitmap section */
 	off_t		offset;
 };
 
@@ -2204,10 +2205,10 @@ is_dumpable_buffer(struct dump_bitmap *bitmap, mdf_pfn_t pfn, struct cycle *cycl
 static inline int
 is_dumpable_file(struct dump_bitmap *bitmap, mdf_pfn_t pfn)
 {
-	off_t offset;
+	off_t offset = info->offset_bitmap1;
 	ssize_t rcode;
 	if (pfn == 0 || bitmap->no_block != pfn/PFN_BUFBITMAP) {
-		offset = bitmap->offset + BUFSIZE_BITMAP*(pfn/PFN_BUFBITMAP);
+		offset += bitmap->offset + BUFSIZE_BITMAP*(pfn/PFN_BUFBITMAP);
 		if (lseek(bitmap->fd, offset, SEEK_SET) < 0 ) {
 			ERRMSG("Can't seek the bitmap(%s). %s\n",
 				bitmap->file_name, strerror(errno));
diff --git a/sadump_info.c b/sadump_info.c
index 46867ce..a3d51b9 100644
--- a/sadump_info.c
+++ b/sadump_info.c
@@ -137,11 +137,11 @@ sadump_is_on(char *bitmap, mdf_pfn_t i)
 static inline int
 sadump_is_dumpable(struct dump_bitmap *bitmap, mdf_pfn_t pfn)
 {
-	off_t offset;
+	off_t offset = info->offset_bitmap1;
 	ssize_t rcode;
 
 	if (pfn == 0 || bitmap->no_block != pfn/PFN_BUFBITMAP) {
-		offset = bitmap->offset + BUFSIZE_BITMAP*(pfn/PFN_BUFBITMAP);
+		offset += bitmap->offset + BUFSIZE_BITMAP*(pfn/PFN_BUFBITMAP);
 		lseek(bitmap->fd, offset, SEEK_SET);
 		rcode = read(bitmap->fd, bitmap->buf, BUFSIZE_BITMAP);
 		if (rcode != BUFSIZE_BITMAP)
-- 
2.7.5


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
