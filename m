Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DD2DCB8D4
	for <lists+kexec@lfdr.de>; Fri,  4 Oct 2019 13:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64kQx0MGmkKOZPu33HIncpLurU1ovVJZ4MW1k6n7VAA=; b=Dw9izGbPQHoZbg
	HXA+SGG9/iiGCbUqsSnwynFPKcfXVCDIwhHVE/y2b2YQPKPJDJcCSL/+NpQMScyUoLaG6qzXOsmRH
	Fg8mnXaPm40OrNJn6Z/szRwmbHk0oLQAVWPIg5JD9t7qCdTLCXN5SnyB+2Q2sytNP2qJhKhi1503m
	pgVGOC9sQcatUzKQwIPmZc/+3C6OcABypPWy+yCJVOI7v7GYXoBcOF0YgVfLDN+OqY3aE/9wHEIzl
	PqSZNqtJC32xxh8A4WTrmmRkKD2Q1Ju3KTdh3KykPbrBX45pF7LRAxCf/UdT/1ench3k/yI5C8qhX
	MtQq8L03Aq6ZMFcI0Mng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGLKx-00026D-Pn; Fri, 04 Oct 2019 11:01:27 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGLKu-00025p-3K
 for kexec@lists.infradead.org; Fri, 04 Oct 2019 11:01:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1570186872;
 bh=k3tmjRU9XelSd0Gkm0QKz/0+4riK+WlLK4ojoJ9k+m0=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject:References:In-Reply-To;
 b=QtrxfzVrBWRTc61UoERQJP1Xfle1qLn6Xe3CsMVPgQadmU1mQZt2JgLE3mQuzhvlV
 mYuYLjl7GSmDwlebAIyc3GNAN+6Au4vrCX3kJU8yPwbULs07xbslXrmpPn9cldo3+a
 2uspl7+HAqJ41NUtr/QFsz89hyZm6vSJtga+Cm5A=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ls3530.fritz.box ([92.116.137.238]) by mail.gmx.com (mrgmx105
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N5VHG-1i4zP01bYo-0170gk; Fri, 04
 Oct 2019 13:01:12 +0200
Date: Fri, 4 Oct 2019 13:01:09 +0200
From: Helge Deller <deller@gmx.de>
To: Simon Horman <horms@verge.net.au>, kexec@lists.infradead.org
Subject: Re: [PATCH] kexec-tools: Fix conversion overflow when compiling on
 32-bit platforms
Message-ID: <20191004110109.GA15439@ls3530.fritz.box>
References: <20191001151416.GA25667@ls3530.fritz.box>
 <20191003081406.5qmzlmlpwobydfok@verge.net.au>
 <2ac17dd1-99ef-3528-a05e-d51f8af01c95@gmx.de>
 <20191004093737.wftu7iat2gk3abq6@verge.net.au>
 <8157edc8-69cb-33b8-ae1c-7a0d80845c9d@gmx.de>
 <20191004101423.jqpakrotimjjyp3w@verge.net.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004101423.jqpakrotimjjyp3w@verge.net.au>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Provags-ID: V03:K1:iEOv4zJU2rxDnfoBDQ/64rsseS33AITJINKvDTcWYuzGmUspaF2
 fLDNDkSzN7sIwx59JWF8wHLTektYP00mSUgnFngI11bUzG08j6CPpXYLT86bTbYWdrx3/Op
 UhYv63EjQQMkyLcJXbIJw91EHS49VTJL+oM8RQCizsnEJEw9e+VUGh1R+O1b9Lyf85N8Jtm
 pR+gQ7DJ/S3vO5jmHS7Lg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CpAmH0Sfros=:zSm6L7IxfUNp9U0svXjGl0
 bFhbZb0HWHutfoKqjIvJOC32Ry4FkA9i2vki8vnG+MMpFzitCgPNjNiIyu9usbkaA4/Cy4ivk
 153lePY7JfSOtpvm9f3jopZxRIsaCHQOnsAbXgNHPvpCHW3GCAtQt7qowNZa/trNOqFitchD2
 L1OcDzsoDLCp/YLveFjovX9U5qmz13GM6rl5WoKzG7UVGJHKaTUP732Fl1kUvr3U7LcIHP2nM
 u/TkqUYVIXVB/gnCZCw0PlRfPjnh1BsDvHNaRuNfOy2MpotF8AGXf46ZLsjxh0iL1jJFBqjMm
 U+OVUQww/VS30e+WS9EkvdLSMCTgOMCt3ZC4FswCKrIDpxpHXjmVojupwu3c6Drndf7v1AVEo
 GL9vicHncQ33xMnhS5mXz8mJsjrDKi/KwYRVpO7mrWTA+ll3ul1F9+SYdN8UmTc8GNziZhhgs
 jiEYw9pRoZBSvWu6BGcXsTLmbRfL7AsTR4f0Fjvu1hpI6TSfk+hTQM3+G+im2HfquaW0rY/SO
 D3+HR4apnZtwNHBE7k80a5hNU2fZFt1TXG51RKZaG90Yi79/bK5tfynz4aJR/0ABvXMEo3i/8
 Lo6t9HHND2m1r0Fj6t7eoz3VGXUDtfZbzELmoFDFN4xblhzhoJgOpAHULYDS2M/wXZ1GNYbwH
 NnLVL4Wr+Er0dukLES8+K4QuFY+WFPtgTlyAtqOwQFt9r7NOcz4nbDjsV+8aMHOHWSWH2odBB
 Bespb1/7P920wM7h4GqeFiQM2apDYDBhig9OWP0zONZ9W3zl6fiQ3AOwlgE/OStPbsnEOuzpE
 FO6Rr5xLw7V7mOZHW5KlGzy8qDmx3VGDbx0w5NAuysXIFBRSEyvUXZgLIdjGOE2MnhvmlwzIl
 G+b3Vq8CNMaxAawoFBm0HISBRccgY6awQN5QgwaePnsuQyJu0ICX81PisFqFN0MyvaY5xO6ae
 AfnumBIj+A9+cnKjXtbB9L5/EBLOJ9MwnhvUR/UQraOEBErneP1Pxg2VqtvOeq5uR56yJi7sh
 9hrIU1wRA+9G2fNxSqmJcSB24aYabsz8W+nuP7L+uw5wKKRuTMv1jkcsPZumwV0xtM8//nJsd
 2p/rL1+8M7OCR568+vHHQ4J1HiNWLcWJNGS93n+nCK5ZtqAJPsTo36mRZ0mnVtktAH9dSOHIX
 8tZeMsY6PaXIpVYyz1AbL84lDg64vMNIGdjR0Swsca66UzMOMCxqZqbId68kkLqOJc6zsSFyE
 6VLhIPCNr6ximY7JvGW5CG5P4b/px7u0OB6vkJA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_040124_478394_12A931FA 
X-CRM114-Status: UNSURE (   6.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deller[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.20 listed in wl.mailspike.net]
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
Cc: Sven Schnelle <svens@stackframe.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When compiling kexec-tools on a 32-bit platform, assigning an
(unsigned long long) value to an (unsigned long) variable creates
this warning:

elf_info.c: In function 'read_phys_offset_elf_kcore':
elf_info.c:805:14: warning: conversion from 'long long unsigned int' to
     'long unsigned int' changes value from '18446744073709551615' to '4294967295'
  805 |  *phys_off = UINT64_MAX;

Fix it by using ULONG_MAX instead of UINT64_MAX.

Signed-off-by: Helge Deller <deller@gmx.de>

diff --git a/util_lib/elf_info.c b/util_lib/elf_info.c
index 2bce5cb..7803a94 100644
--- a/util_lib/elf_info.c
+++ b/util_lib/elf_info.c
@@ -802,7 +802,7 @@ int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off)
 {
 	int ret;

-	*phys_off = UINT64_MAX;
+	*phys_off = ULONG_MAX;

 	ret = read_elf(fd);
 	if (!ret) {

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
