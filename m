Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69979C38AD
	for <lists+kexec@lfdr.de>; Tue,  1 Oct 2019 17:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uR9XW7vq61rVbKv4k4YVWhlL+D5R/Zp0YrWPnk5Giso=; b=mBDNXp9Ww1p4cn
	AWXt6PnTV7t/kRb/azroQDWpStf6Y/DeTdWP0of9Ht1wbAUiOzBf8yW+Hls2zO9nLAikanpghTYAz
	od+qNWLiilIp7NU69NOL7WQhXY4MxrZ1NLxCK5MYu3w1yEPK082gWuoCBCOJkfH/Hnb9HRzqJhuNM
	m6HFqoT7zTLmbo1xNYn4zclPJAnP5XkajFtUTVN6Kf6j85mJ/Z8LYwZr9rdM06ZA/Fh30hutXYBov
	nsPmSWMNhIv2/iVbcEg4xtEK4/4P/II1LD63FQ6i/yVI2tjDxJ2Mo0g0sGVQ9TX/kIDxgHmbdKNcE
	hElY2c5vfHxJExN2/lAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFJrI-0002Py-1X; Tue, 01 Oct 2019 15:14:36 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFJrE-0002Oo-FZ
 for kexec@lists.infradead.org; Tue, 01 Oct 2019 15:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1569942860;
 bh=2/d4RIKMd2moDAxEyMt8SmrhCJl+HQcnv7BI5ZsbYes=;
 h=X-UI-Sender-Class:Date:From:To:Cc:Subject;
 b=ZcAVYzfWo3Lqpd5tFIBwzIKj2AJ2rS8dMZlylcNg0vWxT7jcQFStnX/rnS39QFQUA
 GL1iB9WyrMYP7uRGZxX0MbXcn4q/BuT9w+8OiyG3zdrJD870EV4dAcfi8VY3tr6luT
 Ns8gJqwUxVTz0qapO3nlvJ1XVHg501Ix+8qwn3LE=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from ls3530.fritz.box ([92.116.158.189]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1My36N-1hvrzo3znb-00zTFB; Tue, 01
 Oct 2019 17:14:20 +0200
Date: Tue, 1 Oct 2019 17:14:16 +0200
From: Helge Deller <deller@gmx.de>
To: Simon Horman <horms@verge.net.au>, kexec@lists.infradead.org
Subject: [PATCH] kexec-tools: Fix conversion overflow when compiling on
 32-bit platforms
Message-ID: <20191001151416.GA25667@ls3530.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Provags-ID: V03:K1:nLrVy5RphIoWb5nJPZc8USrS60xqYWPBFck0cu/M4NLz6NmiwYO
 U5BBFSxOk9l1mGTVLfMPsC2JNnfe7F6F6FvoJfn1H7uVmaymcrR1DIcUOcBIebrS9EuR1GW
 QLkumztHghVIhJQS3JbF7UsFBVH8hdqYWbD+7n3L8BSc+KDw/4UXY+LohTffXy9TxPMvDPy
 cQBRdurvwhmPpsRmMux0A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:E7UU2bM1H9k=:8lrzQXa9Q59vK8Fqv/pX1A
 aqPPlnP5vbij1VAgMUMzgOEFQ5bI26tmGAlOKeQjab0FgaM7xFTwxX5tcrROUGhoXjLKENRk0
 H2znV7agMO2SXJZoUT4cmRFZD83VT/bPitVKqLyVdbwEL5pZICYAYvo1ZfMBDljbfqLBrT4Go
 xYGoMDYPdOrijK1WFA3ixzDa+Sla16ClP7VasvwZ8DsXT+7v88SFQN/UXYP1+I0LDws1TvhmZ
 P5W8AfF5almF2s43LGqyaq1MasZ0pPIRgLaUnI//cM+pO+ofBj63s7ZWFuBEtw2xYrwBGD7X/
 g0Brzco2ipyINsqtgpwmezKlFdof5Pus9bDC+0zO81avPo2jPdmKIk6/f6SzCDBwbtCeW8bg6
 M3dTN3NDz2qdkZ7BVtCkTL6tlByvdQfOX/6K1orvPmMdcXiTWZ20mTJO3s14gPzyeUSvVK1J9
 A/93gx4OXOn+bqfGykRkXez8+x0CY0XyT6DXx2pB6F7fAeT1wZ//Y1JIX+ZgbsTeZCcVN6YbZ
 ULhcdbcXFe1+Bsz8kemGDGvPITBQxoL2VLPzBpp+LNZ8vUjPX/yDt8C8kw8OTwlxYNzT5HOcv
 gcbKxi+BGLE12WY0eC2dHq/Kjy2KsK+OHFRinyht/qkP2O+dTgX1BlxkBD1DLwxAWje0o7U24
 G5Nr6NSCQiie44+RSLcgqtMsWnPRMKB2hjRbvNjwq5nN2wrfKNylMqBAX+L8Q3hdg0FMTpDqr
 g827Wl4MpJL/Q7exO053FpfVlnZyrEfix0FL8ADSjjKHJajFNZe0zcKKQaYh8s6WE6Qt48LBC
 MrW+dKwPSq9N/tm9Uzq/owGU7KBiHjadKfyuZhIvUK/vH/mC+BiaG2IpVFMENLx6Q9rK2cTz6
 7QrsmguoEOZo4AA0LzsFC2MgpnobaSSjnmxGaNqdqx+iI2ngsyicK8LKXrH0bIwSU0RLcM1g6
 ABGUAzFcQZQvwjC+ha61AU0xm5KEBsry9gWephH+gwsLVOo7iXldYL3Dj/MFJKBdrKw3iFW7X
 ARow/kG7gaH7ZQttbEMVt1y0sKRSgTBS4utgqYlbF6TDwLMntQ4hBBfLjhxf/iTFgj8rUa32H
 cth2YvBCxv4v8PsWYZ4WAPe3uzvZ8vzbXQE1EaAXWoIaaUNUZvRlB9THZv8aScgQzk+QjA7PD
 zcC4XdKw76omqt2Qb+icUziOEdBtfdRgn4FpmOvMsolRj+rImElvhj0poOu/oUpiOduTUXceB
 MonGEP66E8JcNTPi1eZ38zQqfkRCgGMx35qim3w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_081432_816671_24DCAC8E 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deller[at]gmx.de)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.22 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sven Schnelle <svens@stackframe.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

When compiling kexec-tools on a 32-bit platform, assigning an
(unsigned long long) value to an (unsigned long) variable creates
this warning:

elf_info.c: In function 'read_phys_offset_elf_kcore':
elf_info.c:805:14: warning: conversion from 'long long unsigned int' to 'long unsigned int' changes value from '18446744073709551615' to '4294967295'
  805 |  *phys_off = UINT64_MAX;
      |              ^~~~~~~~~~

Fix it by casting UINT64_MAX to (unsigned long) before storing it to *phys_off.

Signed-off-by: Helge Deller <deller@gmx.de>

diff --git a/util_lib/elf_info.c b/util_lib/elf_info.c
index 2bce5cb..4d16983 100644
--- a/util_lib/elf_info.c
+++ b/util_lib/elf_info.c
@@ -802,7 +802,7 @@ int read_phys_offset_elf_kcore(int fd, unsigned long *phys_off)
 {
 	int ret;

-	*phys_off = UINT64_MAX;
+	*phys_off = (unsigned long) UINT64_MAX;

 	ret = read_elf(fd);
 	if (!ret) {

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
