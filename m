Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F99696EA0
	for <lists+kexec@lfdr.de>; Wed, 21 Aug 2019 03:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=/esBZHsF+n85LNvdmDuOEplDZOCXHrXYJ2tIH6fPI14=; b=TXN7vSt6I7uWbO95Y/By7t/Ar1
	xxH9zXYwA6Cm/V9QpXbj4ioQNYBoybyGncqTdaxcbLpoLHmbC7SMs2TE5saus+1gWaw5VZrlhS9vJ
	vxyK+LdaZabpJQQvzlSXyy4jnrh0VHt5GozaWlvro3BDLtOhl6o7HJO9+mUQLxDtfH5fa84HdDpVL
	gFQ56dcLszMtehSyqUUdiq01M/tpMrLwVFlfbpVPe9hYJqnzvuxP+0tQsFO78JFEn/GwYgN20ADD9
	ONEflLvfKodWT7V/h5nojcmBaJOeIy1IJdv4kpZr3DNKMplbJU8iOuoXF9BoVrLxJwbo7P17k0YOW
	15aG/Big==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0F0C-0002R0-73; Wed, 21 Aug 2019 01:01:28 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0F09-0002Qd-GJ
 for kexec@lists.infradead.org; Wed, 21 Aug 2019 01:01:26 +0000
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7L0v9P0101259
 for <kexec@lists.infradead.org>; Tue, 20 Aug 2019 21:01:22 -0400
Received: from e32.co.us.ibm.com (e32.co.us.ibm.com [32.97.110.150])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2ugu9cs9vt-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Tue, 20 Aug 2019 21:01:22 -0400
Received: from localhost
 by e32.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <bauerman@linux.ibm.com>;
 Wed, 21 Aug 2019 02:01:21 +0100
Received: from b03cxnp07028.gho.boulder.ibm.com (9.17.130.15)
 by e32.co.us.ibm.com (192.168.1.132) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 21 Aug 2019 02:01:18 +0100
Received: from b03ledav005.gho.boulder.ibm.com
 (b03ledav005.gho.boulder.ibm.com [9.17.130.236])
 by b03cxnp07028.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7L11HQa50528568
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 01:01:17 GMT
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 3A998BE051;
 Wed, 21 Aug 2019 01:01:17 +0000 (GMT)
Received: from b03ledav005.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 83147BE056;
 Wed, 21 Aug 2019 01:01:15 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.85.187.8])
 by b03ledav005.gho.boulder.ibm.com (Postfix) with ESMTPS;
 Wed, 21 Aug 2019 01:01:15 +0000 (GMT)
References: <20190715082702.27308-1-svens@stackframe.org>
 <20190715082702.27308-6-svens@stackframe.org>
User-agent: mu4e 1.2.0; emacs 26.2
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: kexec@lists.infradead.org
Subject: Re: [PATCH v4 5/7] kexec_elf: remove Elf_Rel macro
In-reply-to: <20190715082702.27308-6-svens@stackframe.org>
Date: Tue, 20 Aug 2019 22:01:11 -0300
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19082101-0004-0000-0000-000015374AD9
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011626; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01249760; UDB=6.00659774; IPR=6.01031309; 
 MB=3.00028251; MTD=3.00000008; XFM=3.00000015; UTC=2019-08-21 01:01:20
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082101-0005-0000-0000-00008CF3BED9
Message-Id: <87tvabmiw8.fsf@morokweng.localdomain>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_180125_666215_02DCB0EE 
X-CRM114-Status: GOOD (  19.39  )
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, linuxppc-dev@lists.ozlabs.org,
 deller@gmx.de, Sven Schnelle <svens@stackframe.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


Sven Schnelle <svens@stackframe.org> writes:

> It wasn't used anywhere, so lets drop it.
>
> Reviewed-by: Christophe Leroy <christophe.leroy@c-s.fr>
> Signed-off-by: Sven Schnelle <svens@stackframe.org>
> ---
>  kernel/kexec_elf.c | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/kernel/kexec_elf.c b/kernel/kexec_elf.c
> index 70d31b8feeae..e346659af324 100644
> --- a/kernel/kexec_elf.c
> +++ b/kernel/kexec_elf.c
> @@ -10,10 +10,6 @@
>
>  #define elf_addr_to_cpu	elf64_to_cpu
>
> -#ifndef Elf_Rel
> -#define Elf_Rel		Elf64_Rel
> -#endif /* Elf_Rel */
> -
>  static inline bool elf_is_elf_file(const struct elfhdr *ehdr)
>  {
>  	return memcmp(ehdr->e_ident, ELFMAG, SELFMAG) == 0;

Could you remove this one from the file in arch/powerpc as well? Perhaps
this and the previous patch could be placed before patch 1, so that this
change can be done only once.

In any case:

Reviewed-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>

--
Thiago Jung Bauermann
IBM Linux Technology Center


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
