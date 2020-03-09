Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D22B517E236
	for <lists+kexec@lfdr.de>; Mon,  9 Mar 2020 15:06:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ASIai69DtU6wbVVLG66dCLYkUKob9OR+JrmQ2bDsD04=; b=TdH
	cW+7zOIdQwf8N16UA+OfBZxpm9LJn7rqLWC7Jd4eV2KnYt1lGhW/zIQWD+Bzy7RcghD1aY850ySHO
	SvAbUhHR5KS/rqBHjnPCmxBe+GLyfxAsebL0dcyZqFnIfRBAXFzguKl1onO+WdKIIto/lYYwhHpoG
	Zg2gNl6lc4uXe6KgKnlolTRfG63+Dv96YOpi9kqr6DmoYqSyJqsg0Y/RNgB3l4f089i1moeoSdORT
	RKs+axQ/+l/5jpCkNhrNqlMm8ATL9yVjGOHOW8Lb+bGBODjD6aY25bjsG96CLBZDNdl6cLxoL2kZx
	MyHhLucbyyHdbTLjmCW3Q3wdYeOclTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJ3H-0006Fh-Gf; Mon, 09 Mar 2020 14:06:39 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJ3E-0006FQ-Bm
 for kexec@lists.infradead.org; Mon, 09 Mar 2020 14:06:37 +0000
Received: by mail-wm1-x341.google.com with SMTP id p9so10068936wmc.2
 for <kexec@lists.infradead.org>; Mon, 09 Mar 2020 07:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=x5ZnTS8m8hZCrfqyiKuoMHZwMKjrXchD26jTf0vXaLA=;
 b=LnfmKJBWYjMgOJa9T4fOM/0Y2bbJeJ5LMp1PUltlGc+EsKAsOF8rjliDL5s2yKSZ0h
 XefbCU5zKmcLRx2YxMmURDLl8kaxf5c4BevuSN8wQgJunY/FU4DpcvY4cTAP7uTd61qG
 1PNJps3RfcZ8/jBW4CY0ciMKofVhcCp645Lbc8bUSTi5ioNswAeXQT+0K5uYZ2RkJtLA
 lmB+O02LbPG+s6EHQx/7oQg1tXSHdsrC5OaEL59hMf0nbHdlZ/eJvreGHIEMKtX2WJeT
 WkpDdzQdR99b2gj8Hua7xbtgACf90hWCpHK168ntaUcJJkTKjxbcnBpLuYjpX3h+epx7
 K5Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=x5ZnTS8m8hZCrfqyiKuoMHZwMKjrXchD26jTf0vXaLA=;
 b=nigW40HP1NP+ixG8zRk8/o2eHriQd/txaK3YMOd3BCFpx8WDD5PwBl9nWViaDzNCCC
 Ktis8PI5qYc/jAa/CKM9MusRDc/d1PPAqazEyR58H4LDzT0gDNj+X+wxxqDQuWDV8lvX
 0TeFv5m3jpZnxmCmaDWDPuCgnZhIlF/eGPqMjLCmII30fzyralJOgGF0yvNGZSZVNQaS
 pAg9+Sh9KVWZVv8/U4pPFvhDTSJx0m46H6XPh+P23KhcS82wGzpxsV0MP9h49F3zw92B
 qE1UC/V4FGxfpR+12BbCk76xWCg+gamgUyDLB2XVhcYBxYuCEA2rFNhEnLdNX7Q98WZV
 wYPw==
X-Gm-Message-State: ANhLgQ0VXq5kYe85jQz/sMBw70A3XHi8Z7umVK0QYZd4LxtHu29uBFJK
 Mstr0pjn1RBpxbLEIXQ7L62kVHbUlW0nzr/Y3rpviNlZ
X-Google-Smtp-Source: ADFU+vu9zmbNMQG4u2scJV6aPycMSn7IBgO6kSqVvMTQSs9Dk0Z+QqMtmU6uA/SgIzMjFLBQUAzME77PzYFAlVrerbs=
X-Received: by 2002:a1c:2701:: with SMTP id n1mr20433292wmn.180.1583762794072; 
 Mon, 09 Mar 2020 07:06:34 -0700 (PDT)
MIME-Version: 1.0
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Mon, 9 Mar 2020 19:35:56 +0530
Message-ID: <CAJ2QiJKqZbi7V9nd+=NFUnKBhTBqqbm=-pkuLQ0P3s=1hLgOmQ@mail.gmail.com>
Subject: makedumpfile: undefined reference for lzma function during build
To: kexec mailing list <kexec@lists.infradead.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, 
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Kamlakant Patel <kamlakantp@marvell.com>, 
 Prabhakar Kushwaha <pkushwaha@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_070636_405442_A8862DF6 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi All,

While building makedumpfile for AARM64 Thunder X2, I am getting this error

cc  -g -O2 -Wall -D_FILE_OFFSET_BITS=64 -D_LARGEFILE_SOURCE
-D_LARGEFILE64_SOURCE -DVERSION='"1.6.7"' -DRELEASE_DATE='"16 Jan
2020"' -D__aarch64__   print_info.o dwarf_info.o elf_info.o
erase_info.o sadump_info.o cache.o tools.o arch/arm.o arch/arm64.o
arch/x86.o arch/x86_64.o arch/ia64.o arch/ppc64.o arch/s390x.o
arch/ppc.o arch/sparc64.o -rdynamic -o makedumpfile makedumpfile.c
-lpthread -static -ldw -lbz2 -ldl -lelf -lz  -lebl
erase_info.o: In function `process_eppic_file':
/home/prabhakar/MERGE/OPENSRC/APPL/makedumpfile-code/erase_info.c:2202:
warning: Using 'dlopen' in statically linked applications requires at
runtime the shared libraries from the glibc version used for linking
//usr/local/lib/libdw.a(lzma.o): In function `__libdw_unlzma':
/home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:233:
undefined reference to `lzma_auto_decoder'
/home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:248:
undefined reference to `lzma_end'
/home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:267:
undefined reference to `lzma_code'
/home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:277:
undefined reference to `lzma_end'
/home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:236:
undefined reference to `lzma_end'
/home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:277:
undefined reference to `lzma_end'
/home/prabhakar/MERGE/OPENSRC/APPL/elfutils-0.177/libdwfl/gzip.c:277:
undefined reference to `lzma_end'
collect2: error: ld returned 1 exit status
Makefile:100: recipe for target 'makedumpfile' failed

Source code: https://git.code.sf.net/p/makedumpfile/code
Top commit e7301654029330bbf49693002fa72223f9b3fb36 (HEAD -> master,
tag: Released-1-6-7, origin/master, origin/HEAD)
Author: Kazuhito Hagio <k-hagio-ab@nec.com>
Date:   Wed Jan 15 13:09:56 2020 -0500

    [v1.6.7] Update version

    Update makedumpfile to version 1.6.7.

    Signed-off-by: Kazuhito Hagio <k-hagio-ab@nec.com>


I googled and found
http://lists.infradead.org/pipermail/kexec/2017-May/018760.html i.e.
diff --git a/Makefile b/Makefile
index 388faf7..810a7a0 100644
--- a/Makefile
+++ b/Makefile
@@ -50,7 +50,7 @@ OBJ_PART=$(patsubst %.c,%.o,$(SRC_PART))
 SRC_ARCH = arch/arm.c arch/arm64.c arch/x86.c arch/x86_64.c
arch/ia64.c arch/ppc64.c arch/s390x.c arch/ppc.c arch/sparc64.c
 OBJ_ARCH=$(patsubst %.c,%.o,$(SRC_ARCH))

-LIBS = -ldw -lbz2 -ldl -lelf -lz
+LIBS = -ldw -lbz2 -ldl -lelf -lz -llzma
 ifneq ($(LINKTYPE), dynamic)
 LIBS := -static $(LIBS)
 endif

After adding this change, no more build error.This change was required
for spac64. So do we need similar changes for AARM64 platform also.

--pk

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
