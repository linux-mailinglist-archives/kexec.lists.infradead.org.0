Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D212583D1
	for <lists+kexec@lfdr.de>; Thu, 27 Jun 2019 15:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4Dq7zKF6taaod0R9CR81voLeyIkRvb8jQKwKkFRW/04=; b=OnTA9+5sIMHdtn
	NnMAnOa55anPf4W6SUtgJneraXQBUSscfdd122cmHju36yLQPq9xsZVVOTB4d6T8NUZ0WAEkO74LT
	7DGkVAtCgNmFSCxsSdoYLSPLBTY4tj7ujOaq/H8EZzdVbWtJ7i9B/yThgaDUjlIGO6SYszm437r00
	2SxO5antKWsIlJkE/V99cd18maP5buBkZUDAJSDe/m+tTdGmoATmRkXmGOv7IdwDNq8ljWXXZaRA0
	vQvq+BxlvbiEsXWB9cMHcmnjMKK3XyJVhPhSP6lJEh0OI4fIDK4gqr5RZXyH+V3eNsjb/T0p53KNt
	gb49NyeMeGKdFuAgN2qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUlk-00047k-Hx; Thu, 27 Jun 2019 13:48:56 +0000
Received: from tyo161.gate.nec.co.jp ([114.179.232.161])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUlf-00046p-5f
 for kexec@lists.infradead.org; Thu, 27 Jun 2019 13:48:53 +0000
Received: from mailgate02.nec.co.jp ([114.179.233.122])
 by tyo161.gate.nec.co.jp (8.15.1/8.15.1) with ESMTPS id x5RDmkSv029785
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
 for <kexec@lists.infradead.org>; Thu, 27 Jun 2019 22:48:46 +0900
Received: from mailsv02.nec.co.jp (mailgate-v.nec.co.jp [10.204.236.94])
 by mailgate02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x5RDmkL5012338
 for <kexec@lists.infradead.org>; Thu, 27 Jun 2019 22:48:46 +0900
Received: from mail01b.kamome.nec.co.jp (mail01b.kamome.nec.co.jp [10.25.43.2])
 by mailsv02.nec.co.jp (8.15.1/8.15.1) with ESMTP id x5RDmk7G015904
 for <kexec@lists.infradead.org>; Thu, 27 Jun 2019 22:48:46 +0900
Received: from bpxc99gp.gisp.nec.co.jp ([10.38.151.137] [10.38.151.137]) by
 mail01b.kamome.nec.co.jp with ESMTP id BT-MMP-6337535;
 Thu, 27 Jun 2019 22:47:41 +0900
Received: from BPXM09GP.gisp.nec.co.jp ([10.38.151.201]) by
 BPXC09GP.gisp.nec.co.jp ([10.38.151.137]) with mapi id 14.03.0319.002; Thu,
 27 Jun 2019 22:47:41 +0900
From: Kazuhito Hagio <k-hagio@ab.jp.nec.com>
To: "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Subject: [ANNOUNCE] makedumpfile 1.6.6 is released
Thread-Topic: [ANNOUNCE] makedumpfile 1.6.6 is released
Thread-Index: AdUsUzjoJSYKlIt7QWmuqzeA/gBZhg==
Date: Thu, 27 Jun 2019 13:47:40 +0000
Message-ID: <4AE2DC15AC0B8543882A74EA0D43DBEC035794EF@BPXM09GP.gisp.nec.co.jp>
Accept-Language: ja-JP, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [143.101.133.126]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_064851_447624_085E8F34 
X-CRM114-Status: UNSURE (   4.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [114.179.232.161 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hello,

I'm pleased to announce the release of makedumpfile 1.6.6.
Your comments/patches are welcome.

Main new features:
o Support for AMD Secure Memory Encryption
o Exclude pages that are logically offline
o Support new kernels
  - The supported kernel is updated to 5.1.9 in this version.

Changelog since v1.6.5:
0a8b504102db [v1.6.6] Update version (Kazuhito Hagio)
8c21fc7e7c52 [PATCH] Support newer kernels up to v5.1 (Kazuhito Hagio)
3222d4ad04c6 [PATCH] x86_64: fix get_kaslr_offset_x86_64() to return kaslr_offset correctly (Kazuhito Hagio)
d222b01e516b [PATCH] x86_64: Add support for AMD Secure Memory Encryption (Lianbo Jiang)
1743c7370868 [PATCH] exclude pages that are logically offline (David Hildenbrand)
feee755900e0 [PATCH] ppc64: fix a typo for checking the file pointer for null (Nisha Parrakat)
2f007b48c581 [PATCH v2] honor the CFLAGS from environment variables (Kairui Song)
b9da17259ef5 [PATCH] Some improvements of debugging messages (Kazuhito Hagio)
f349b51f6211 [PATCH] ppc64: increase MAX_PHYSMEM_BITS to 2PB (Hari Bathini)

Explanation of makedumpfile:
  To shorten the size of the dumpfile and the time of creating the
  dumpfile, makedumpfile copies only the necessary pages for analysis
  to the dumpfile from /proc/vmcore. You can specify the kind of
  unnecessary pages with dump_level. If you want to shorten the size
  further, enable the compression of the page data.

Download:
  The latest makedumpfile can be downloaded from the following URL.
  https://sourceforge.net/projects/makedumpfile/

Thanks,
Kazu



_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
