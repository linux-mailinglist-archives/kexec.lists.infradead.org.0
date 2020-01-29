Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDF314C5EE
	for <lists+kexec@lfdr.de>; Wed, 29 Jan 2020 06:38:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QaCSdB/5oynxOGRa8XdGNBJom7Ezxw8j6px+w5xp86s=; b=tNdh/5uoZMH/U9
	mDcjwBbnguBptWiB2D/e37q92hdggDjG0L1+2C15jL+MPqFctL+mM7ThZB3pm7CYpnZexhKcEaZM6
	M9PQtVRBWcD2bBsGSTbCiydlkkXzgjYcNnSH91n+yFHWUursFwR6aqOe/VDOKDoqqlXMm9oTj1xbC
	v+10/pOM5uech9SBkD0AXbOXbH5l5uHsXD23B+TcZQmDpysg1mKfB5EkpKGJEMbzYE/M8U+q5T1In
	N+E88CZ235wqK/fAM40b8fmWHs9yABO62tL6XrV6cRF7I1BiGZTavxdH/wUjcG/xP+IWiQJZph8z7
	rOWn3kJEVVlxLvdk8RzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwg3x-0002fG-H0; Wed, 29 Jan 2020 05:38:53 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwg3t-0002eo-NU
 for kexec@lists.infradead.org; Wed, 29 Jan 2020 05:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580276328;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=UC/+lN6dtncEsRvCnas6OwOXUpjmS3al1vyD0i1elEQ=;
 b=fSlX72K3Khe+bJ/9k9P4sjPDXryg/f0RcfRUXvRYZJRnkx4ENFoz+MvgGsAPawRE5gbDK8
 W91tME39BERT1BxYU6/dRgKPkaHmxDeKQfjYl5+nFzbQh0BhErlzJBlRJmfqfHzvz00Hfs
 nccM86jv6Sl/bBGyABCb8TG47cP/YLU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-323-jWJA3SfRMXaZwZUUMKdm2Q-1; Wed, 29 Jan 2020 00:38:45 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 313EC477;
 Wed, 29 Jan 2020 05:38:44 +0000 (UTC)
Received: from kasong-rh-laptop.redhat.com (ovpn-12-91.pek2.redhat.com
 [10.72.12.91])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 59BBC5C28C;
 Wed, 29 Jan 2020 05:38:42 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH] kexec-tools: Remove duplicated variable declarations
Date: Wed, 29 Jan 2020 13:38:19 +0800
Message-Id: <20200129053819.622511-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: jWJA3SfRMXaZwZUUMKdm2Q-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_213849_845439_E468C78A 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Simon Horman <horms@verge.net.au>, Kairui Song <kasong@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When building kexec-tools for Fedora 32, following error is observed:

/usr/bin/ld: kexec/arch/x86_64/kexec-bzImage64.o:(.bss+0x0): multiple definition of `bzImage_support_efi_boot';
kexec/arch/i386/kexec-bzImage.o:(.bss+0x0): first defined here

/builddir/build/BUILD/kexec-tools-2.0.20/kexec/arch/arm/../../fs2dt.h:33: multiple definition of `my_debug';
kexec/fs2dt.o:/builddir/build/BUILD/kexec-tools-2.0.20/kexec/fs2dt.h:33: first defined here

/builddir/build/BUILD/kexec-tools-2.0.20/kexec/arch/arm64/kexec-arm64.h:68: multiple definition of `arm64_mem';
kexec/fs2dt.o:/builddir/build/BUILD/kexec-tools-2.0.20/././kexec/arch/arm64/kexec-arm64.h:68: first defined here

/builddir/build/BUILD/kexec-tools-2.0.20/kexec/arch/arm64/kexec-arm64.h:54: multiple definition of `initrd_size';
kexec/fs2dt.o:/builddir/build/BUILD/kexec-tools-2.0.20/././kexec/arch/arm64/kexec-arm64.h:54: first defined here

/builddir/build/BUILD/kexec-tools-2.0.20/kexec/arch/arm64/kexec-arm64.h:53: multiple definition of `initrd_base';
kexec/fs2dt.o:/builddir/build/BUILD/kexec-tools-2.0.20/././kexec/arch/arm64/kexec-arm64.h:53: first defined here

And apparently, these variables are wrongly declared multiple times. So
remove duplicated declaration.

Signed-off-by: Kairui Song <kasong@redhat.com>
---
 kexec/arch/arm64/kexec-arm64.h      | 6 +++---
 kexec/arch/ppc64/kexec-elf-ppc64.c  | 2 --
 kexec/arch/x86_64/kexec-bzImage64.c | 1 -
 kexec/fs2dt.h                       | 2 +-
 4 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/kexec/arch/arm64/kexec-arm64.h b/kexec/arch/arm64/kexec-arm64.h
index 628de79..ed447ac 100644
--- a/kexec/arch/arm64/kexec-arm64.h
+++ b/kexec/arch/arm64/kexec-arm64.h
@@ -50,8 +50,8 @@ int zImage_arm64_load(int argc, char **argv, const char *kernel_buf,
 void zImage_arm64_usage(void);
 
 
-off_t initrd_base;
-off_t initrd_size;
+extern off_t initrd_base;
+extern off_t initrd_size;
 
 /**
  * struct arm64_mem - Memory layout info.
@@ -65,7 +65,7 @@ struct arm64_mem {
 };
 
 #define arm64_mem_ngv UINT64_MAX
-struct arm64_mem arm64_mem;
+extern struct arm64_mem arm64_mem;
 
 uint64_t get_phys_offset(void);
 uint64_t get_vp_offset(void);
diff --git a/kexec/arch/ppc64/kexec-elf-ppc64.c b/kexec/arch/ppc64/kexec-elf-ppc64.c
index 3510b70..695b8b0 100644
--- a/kexec/arch/ppc64/kexec-elf-ppc64.c
+++ b/kexec/arch/ppc64/kexec-elf-ppc64.c
@@ -44,8 +44,6 @@
 uint64_t initrd_base, initrd_size;
 unsigned char reuse_initrd = 0;
 const char *ramdisk;
-/* Used for enabling printing message from purgatory code */
-int my_debug = 0;
 
 int elf_ppc64_probe(const char *buf, off_t len)
 {
diff --git a/kexec/arch/x86_64/kexec-bzImage64.c b/kexec/arch/x86_64/kexec-bzImage64.c
index 8edb3e4..ba8dc48 100644
--- a/kexec/arch/x86_64/kexec-bzImage64.c
+++ b/kexec/arch/x86_64/kexec-bzImage64.c
@@ -42,7 +42,6 @@
 #include <arch/options.h>
 
 static const int probe_debug = 0;
-int bzImage_support_efi_boot;
 
 int bzImage64_probe(const char *buf, off_t len)
 {
diff --git a/kexec/fs2dt.h b/kexec/fs2dt.h
index 7633273..fe24931 100644
--- a/kexec/fs2dt.h
+++ b/kexec/fs2dt.h
@@ -30,7 +30,7 @@ extern struct bootblock bb[1];
 
 /* Used for enabling printing message from purgatory code
  * Only has implemented for PPC64 */
-int my_debug;
+extern int my_debug;
 extern int dt_no_old_root;
 
 void reserve(unsigned long long where, unsigned long long length);
-- 
2.24.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
