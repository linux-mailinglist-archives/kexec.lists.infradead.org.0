Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 535F5AC22B
	for <lists+kexec@lfdr.de>; Fri,  6 Sep 2019 23:47:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tcbl2s96E4ab3Nnht45srKKIN0ncnecti5NO6tvNl0g=; b=bay7v23i0ABFGsHmhTX3k0HDrF
	je1zKn1twdRnV5lun6TxfEEnvV7i9EJtKgVHlajYtpyYptREVlm3PCBX83x7ve1Mu5Gyjry5lE9ma
	0q/B9B1k7v15vxK3B9uyd6P2LuFIqNTftx6x4to0Fe0BIRQiWnqaO+VgiCdqX1KtOEUkLpxM1cBF/
	xxOwvB/pud5STudfaXdFVXpOgkdoKa4Y8zaWRWzffPF9AgVXLU3L496pqIva5Z++11UJfCzh/uCNf
	fRpT9X1pR7164lMXZb92CraaaqqBQV/+jFZZVm1VkU2y1KlMFI3Pn8hQmS/ajuKCd2+trdkdouIY4
	9QNTB/PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6M58-0006HW-NN; Fri, 06 Sep 2019 21:47:50 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6M54-0006Gy-LM
 for kexec@lists.infradead.org; Fri, 06 Sep 2019 21:47:48 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x86Lg4oq015538; Fri, 6 Sep 2019 17:47:45 -0400
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2uutysaa5d-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Sep 2019 17:47:44 -0400
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.27/8.16.0.27) with SMTP id x86LhDkD017509;
 Fri, 6 Sep 2019 17:47:44 -0400
Received: from ppma03dal.us.ibm.com (b.bd.3ea9.ip4.static.sl-reverse.com
 [169.62.189.11])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2uutysaa51-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Sep 2019 17:47:44 -0400
Received: from pps.filterd (ppma03dal.us.ibm.com [127.0.0.1])
 by ppma03dal.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id x86Ldec9018940;
 Fri, 6 Sep 2019 21:47:43 GMT
Received: from b03cxnp08026.gho.boulder.ibm.com
 (b03cxnp08026.gho.boulder.ibm.com [9.17.130.18])
 by ppma03dal.us.ibm.com with ESMTP id 2uqgh819w0-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 06 Sep 2019 21:47:43 +0000
Received: from b03ledav005.gho.boulder.ibm.com
 (b03ledav005.gho.boulder.ibm.com [9.17.130.236])
 by b03cxnp08026.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x86LlgpL58655200
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Fri, 6 Sep 2019 21:47:42 GMT
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 42280BE053;
 Fri,  6 Sep 2019 21:47:42 +0000 (GMT)
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id CA208BE04F;
 Fri,  6 Sep 2019 21:47:40 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.85.199.12])
 by b03ledav005.gho.boulder.ibm.com (Postfix) with ESMTPS;
 Fri,  6 Sep 2019 21:47:40 +0000 (GMT)
References: <20190823194919.30916-1-svens@stackframe.org>
 <22b40bb7-6f86-0a69-12b2-12d90124173d@gmx.de>
User-agent: mu4e 1.2.0; emacs 26.2
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: Helge Deller <deller@gmx.de>
Subject: Re: [PATCH v5 0/7] kexec: add generic support for elf kernel images
In-reply-to: <22b40bb7-6f86-0a69-12b2-12d90124173d@gmx.de>
Date: Fri, 06 Sep 2019 18:47:35 -0300
Message-ID: <87blvxgkqw.fsf@morokweng.localdomain>
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-09-06_09:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1909060218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_144746_873452_0B6CCF14 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.158.5 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kexec@lists.infradead.org, Sven Schnelle <svens@stackframe.org>,
 linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


Helge Deller <deller@gmx.de> writes:

> Hi all,
>
> This kexec patch series is the groundwork for kexec on the parisc architecture.
> Since we want kexec on parisc, I've applied it to my for-next-kexec tree [1],
> and can push it to Linus in the next merge window through the parisc tree [2].

I just had a look at this version and it looks fine to me. Identical to
the version I reviewed before except for the changes I suggested.
Thanks, Sven!

> If someone has any objections, or if you prefer to take it through
> a kexec or powerpc tree, please let me know.
>
> Helge
>
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/deller/parisc-linux.git/log/?h=for-next-kexec
> [2] https://git.kernel.org/pub/scm/linux/kernel/git/deller/parisc-linux.git/log/?h=for-next

I noticed that the first patch is the only one that doesn't have my
Reviewed-by. If you want, you can add it:

Reviewed-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>

If it's inconvenient to add it now since it's already applied, that's
fine too of course.

> On 23.08.19 21:49, Sven Schnelle wrote:
>> Changes to v4:
>>  - rebase on current powerpc/merge tree
>>  - fix syscall name in commit message
>>  - remove a few unused #defines in arch/powerpc/kernel/kexec_elf_64.c
>>...
>>  arch/Kconfig                                  |   3 +
>>  arch/powerpc/Kconfig                          |   1 +
>>  arch/powerpc/kernel/kexec_elf_64.c            | 545 +-----------------
>>  include/linux/kexec.h                         |  23 +
>>  kernel/Makefile                               |   1 +
>>  .../kexec_elf_64.c => kernel/kexec_elf.c      | 394 +++----------
>>  6 files changed, 115 insertions(+), 852 deletions(-)
>>  copy arch/powerpc/kernel/kexec_elf_64.c => kernel/kexec_elf.c (50%)


-- 
Thiago Jung Bauermann
IBM Linux Technology Center

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
