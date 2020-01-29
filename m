Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4181E14C5ED
	for <lists+kexec@lfdr.de>; Wed, 29 Jan 2020 06:38:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=72paDAefJyuyMXUevMOy8oVNJef/q1fhu8lY4eQZ/gg=; b=fQnGGrGdDiPXE5
	8sZcPy2j7kkiTw2/1ugNsXRJ0kmK5z8Y1r71s3RthVLAfrqAOx+MfBn0o/hFHKL/2FMqvmKnhTxq5
	KO/Q82usO5EACOoduTNQrRZOxJM/UguT4akegb1+baIZh9iVIiUVa8tYMGLpTKvHAvcMcivY+584v
	N0hOFaJuk1LOCRWijVNY8rFzrLijER7vk/ZHDz0JXnPRzcSuON4Qpc6tNoFHtXHvAt1mdNhg00j6m
	tuiOVpZCTS8AMAw/F5Axv2qMKzrZD79SLzeYjWo50rZAsxGwIuyvlaA8jp4eKdNYJjd9R8Uzq0ROZ
	iDxEWc6s+/Ho7JF79yyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwg38-0002Xu-NY; Wed, 29 Jan 2020 05:38:02 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwg34-0002OA-HV
 for kexec@lists.infradead.org; Wed, 29 Jan 2020 05:38:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1580276274;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=dvGHg6guNcYGGoI0q9tdddK8L5MvDViTh79S1yQ2AfU=;
 b=bHVwTQXIrKoS34XcswfaUKCJis4xZO3tGYmrgzThJTPaDjaw34XHHYB989jNWCcQ3AN35b
 EP7sfr/+IO7JMTgHy6ZaNoiTpIJ/SyNTA4OyM556xwboPUYVXqf7hc2lmfXaM0pw+ebRZq
 1TUYac48aDGzDLgt1fQm9EbA9xhkYCE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-269-6X6NfTRxM7i2QECzA5IKCQ-1; Wed, 29 Jan 2020 00:37:52 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BFD6D8017CC;
 Wed, 29 Jan 2020 05:37:50 +0000 (UTC)
Received: from kasong-rh-laptop.redhat.com (ovpn-12-91.pek2.redhat.com
 [10.72.12.91])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 50FBE38B;
 Wed, 29 Jan 2020 05:37:49 +0000 (UTC)
From: Kairui Song <kasong@redhat.com>
To: kexec@lists.infradead.org
Subject: [PATCH] makedumpfile: Remove duplicated variable declarations
Date: Wed, 29 Jan 2020 13:37:13 +0800
Message-Id: <20200129053713.622072-1-kasong@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: 6X6NfTRxM7i2QECzA5IKCQ-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_213758_657915_A7043066 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
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
Cc: Kazuhito Hagio <k-hagio-ab@nec.com>, Kairui Song <kasong@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When building on Fedora 32, following error is observed:

/usr/bin/ld: erase_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:2010:
multiple definition of `crash_reserved_mem_nr'; elf_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:2010: first defined here
/usr/bin/ld: erase_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:2009:
multiple definition of `crash_reserved_mem'; elf_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:2009: first defined here
/usr/bin/ld: erase_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:1278:
multiple definition of `parallel_info_t'; elf_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:1278: first defined here
/usr/bin/ld: erase_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:1265:
multiple definition of `splitting_info_t'; elf_info.o:/builddir/build/BUILD/kexec-tools-2.0.20/makedumpfile-1.6.7/makedumpfile.h:1265: first defined here

And apparently, these variables are wrongly declared multiple times. So
remove duplicated declaration.

Signed-off-by: Kairui Song <kasong@redhat.com>
---
 makedumpfile.c |  2 ++
 makedumpfile.h | 10 ++++++----
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/makedumpfile.c b/makedumpfile.c
index e290fbd..9aad77b 100644
--- a/makedumpfile.c
+++ b/makedumpfile.c
@@ -34,6 +34,8 @@ struct array_table	array_table;
 struct number_table	number_table;
 struct srcfile_table	srcfile_table;
 struct save_control	sc;
+struct parallel_info	parallel_info_t;
+struct splitting_info	splitting_info_t;
 
 struct vm_table		vt = { 0 };
 struct DumpInfo		*info = NULL;
diff --git a/makedumpfile.h b/makedumpfile.h
index 68d9691..614764c 100644
--- a/makedumpfile.h
+++ b/makedumpfile.h
@@ -1262,7 +1262,8 @@ struct splitting_info {
 	mdf_pfn_t		end_pfn;
 	off_t			offset_eraseinfo;
 	unsigned long		size_eraseinfo;
-} splitting_info_t;
+};
+extern struct splitting_info splitting_info_t;
 
 struct parallel_info {
 	int			fd_memory;
@@ -1275,7 +1276,8 @@ struct parallel_info {
 #ifdef USELZO
 	lzo_bytep		wrkmem;
 #endif
-} parallel_info_t;
+};
+extern struct parallel_info parallel_info_t;
 
 struct ppc64_vmemmap {
 	unsigned long		phys;
@@ -2006,8 +2008,8 @@ struct memory_range {
 };
 
 #define CRASH_RESERVED_MEM_NR   8
-struct memory_range crash_reserved_mem[CRASH_RESERVED_MEM_NR];
-int crash_reserved_mem_nr;
+extern struct memory_range crash_reserved_mem[CRASH_RESERVED_MEM_NR];
+extern int crash_reserved_mem_nr;
 
 unsigned long read_vmcoreinfo_symbol(char *str_symbol);
 int readmem(int type_addr, unsigned long long addr, void *bufptr, size_t size);
-- 
2.24.1


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
