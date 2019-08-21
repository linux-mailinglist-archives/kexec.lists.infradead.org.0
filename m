Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419C696EA3
	for <lists+kexec@lfdr.de>; Wed, 21 Aug 2019 03:03:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kytSnZ9IjT0zKAiRYA6p7XJqTtRGOJ03qz06QeMvfak=; b=NNe5urw9zTinUSa7WruYW0e/oO
	NMxM5HqwfHsy2VPy5u7iIn+ZxmCK95ulmnTxh51v9j31RMG4ry0ONKv82xyJ8dQbQQDPdz/csyq5I
	Ktk7ka0UulQkoKGdIctTygjvFHCLvFTegt/G6MfkAd14Z6eoFjHV+Mp+rJB9fMj8u+L5ysCYbZVU9
	ffOg7nEAaOUPHBaGFGZXtoFCLzr2JI0rbNz1UPRE+zsPp3G7mUAr5hFjjwKOn9PF5qvfmTTM9/MfQ
	6Yh2dSYQyomKtEZ2cZ9X5zsZE1oruB1ANT4LPBwIaL22dAtUqhRE9/wQreJ+QHwjjL/YmnGi2ndqe
	Dkon5gWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0F2S-0002c9-N1; Wed, 21 Aug 2019 01:03:48 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0F2N-0002aM-KD
 for kexec@lists.infradead.org; Wed, 21 Aug 2019 01:03:45 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7L11xVs115062; Tue, 20 Aug 2019 21:03:42 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2ugu9csd5x-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 20 Aug 2019 21:03:42 -0400
Received: from m0098414.ppops.net (m0098414.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x7L122q1115444;
 Tue, 20 Aug 2019 21:03:42 -0400
Received: from ppma05wdc.us.ibm.com (1b.90.2fa9.ip4.static.sl-reverse.com
 [169.47.144.27])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2ugu9csd5g-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 20 Aug 2019 21:03:42 -0400
Received: from pps.filterd (ppma05wdc.us.ibm.com [127.0.0.1])
 by ppma05wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x7L0uQdC020596;
 Wed, 21 Aug 2019 00:58:41 GMT
Received: from b01cxnp23032.gho.pok.ibm.com (b01cxnp23032.gho.pok.ibm.com
 [9.57.198.27]) by ppma05wdc.us.ibm.com with ESMTP id 2ue9761cyn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 21 Aug 2019 00:58:41 +0000
Received: from b01ledav005.gho.pok.ibm.com (b01ledav005.gho.pok.ibm.com
 [9.57.199.110])
 by b01cxnp23032.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7L0wfG122348276
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 00:58:41 GMT
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 09B5EAE05C;
 Wed, 21 Aug 2019 00:58:41 +0000 (GMT)
Received: from b01ledav005.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DC2F8AE062;
 Wed, 21 Aug 2019 00:58:39 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.85.187.8])
 by b01ledav005.gho.pok.ibm.com (Postfix) with ESMTPS;
 Wed, 21 Aug 2019 00:58:39 +0000 (GMT)
References: <20190715082702.27308-1-svens@stackframe.org>
 <20190715082702.27308-2-svens@stackframe.org>
User-agent: mu4e 1.2.0; emacs 26.2
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: kexec@lists.infradead.org
Subject: Re: [PATCH v4 1/7] kexec: add KEXEC_ELF
In-reply-to: <20190715082702.27308-2-svens@stackframe.org>
Date: Tue, 20 Aug 2019 21:58:35 -0300
Message-ID: <87zhk3mj0k.fsf@morokweng.localdomain>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=13 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_180343_784745_4A93D3F0 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
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
Cc: linuxppc-dev@lists.ozlabs.org, deller@gmx.de,
 Sven Schnelle <svens@stackframe.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


Hello Sven,

Just a few small comments below. Regardless of them:

Reviewed-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>

Sven Schnelle <svens@stackframe.org> writes:

> Right now powerpc provides an implementation to read elf files
> with the kexec_file() syscall. Make that available as a public

Nit: the syscall is kexec_file_load()

> kexec interface so it can be re-used on other architectures.
>
> Signed-off-by: Sven Schnelle <svens@stackframe.org>
> ---
>  arch/Kconfig                                  |   3 +
>  arch/powerpc/Kconfig                          |   1 +
>  arch/powerpc/kernel/kexec_elf_64.c            | 551 +-----------------
>  include/linux/kexec.h                         |  24 +
>  kernel/Makefile                               |   1 +
>  .../kexec_elf_64.c => kernel/kexec_elf.c      | 199 ++-----
>  6 files changed, 75 insertions(+), 704 deletions(-)
>  copy arch/powerpc/kernel/kexec_elf_64.c => kernel/kexec_elf.c (71%)

<snip>

> diff --git a/arch/powerpc/kernel/kexec_elf_64.c b/arch/powerpc/kernel/kexec_elf_64.c
> index ba4f18a43ee8..30bd57a93c17 100644
> --- a/arch/powerpc/kernel/kexec_elf_64.c
> +++ b/arch/powerpc/kernel/kexec_elf_64.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0-only
>  /*
>   * Load ELF vmlinux file for the kexec_file_load syscall.
>   *
> @@ -10,15 +11,6 @@
>   * Based on kexec-tools' kexec-elf-exec.c and kexec-elf-ppc64.c.
>   * Heavily modified for the kernel by
>   * Thiago Jung Bauermann <bauerman@linux.vnet.ibm.com>.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation (version 2 of the License).
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
>   */
>
>  #define pr_fmt(fmt)	"kexec_elf: " fmt
> @@ -39,532 +31,6 @@
>  #define Elf_Rel		Elf64_Rel
>  #endif /* Elf_Rel */

Perhaps this patch could remove the #define for elf_addr_to_cpu since
it's not used anymore in this file?

> diff --git a/arch/powerpc/kernel/kexec_elf_64.c b/kernel/kexec_elf.c
> similarity index 71%
> copy from arch/powerpc/kernel/kexec_elf_64.c
> copy to kernel/kexec_elf.c
> index ba4f18a43ee8..6e9f52171ede 100644
> --- a/arch/powerpc/kernel/kexec_elf_64.c
> +++ b/kernel/kexec_elf.c
> @@ -1,33 +1,10 @@
> -/*
> - * Load ELF vmlinux file for the kexec_file_load syscall.
> - *
> - * Copyright (C) 2004  Adam Litke (agl@us.ibm.com)
> - * Copyright (C) 2004  IBM Corp.
> - * Copyright (C) 2005  R Sharada (sharada@in.ibm.com)
> - * Copyright (C) 2006  Mohan Kumar M (mohan@in.ibm.com)
> - * Copyright (C) 2016  IBM Corporation
> - *
> - * Based on kexec-tools' kexec-elf-exec.c and kexec-elf-ppc64.c.
> - * Heavily modified for the kernel by
> - * Thiago Jung Bauermann <bauerman@linux.vnet.ibm.com>.
> - *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation (version 2 of the License).
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - */
> +// SPDX-License-Identifier: GPL-2.0-only

I may be wrong, but my understanding of the SPDX license identifier is
that it substitutes the license text (i.e., the last two paragraphs
above), but not the copyright statements. Is it ok to have a file with a
SPDX license identifier but no copyright statement?

--
Thiago Jung Bauermann
IBM Linux Technology Center

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
