Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F9896EA1
	for <lists+kexec@lfdr.de>; Wed, 21 Aug 2019 03:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:MIME-Version:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R7rFOZXzwo9YsdYpAZlV7Hs0p3aQDiupQPk5pXj5Cm4=; b=m6s/+uI3hkPmUA6/VbPTW+6VJY
	Tzw+OX8ZisaBA4oR9ARVJcuyaA6+r2xgpouZGjb8XkPMFGrVe9ZNvLMB80xxo1uyqaBuFf88+FZzN
	uiHhoXaRg86/Do2f7J7FZFrWMLHjOxBi4xh0CWV53CaRqiku/dNsp7l7zWltn/TgqEksiu7YJadzr
	Pt/aFrWBpTu3mbrKiO3/UUGDUbTi8akcW1pmnhl/wx4amQjt4IFuvPQmzgw7ck64CdXIHfohhxhn/
	Mpdc7VIYT1A9UOpJcvkIHsnLJhfp62M5mp8Zsme86Z3OSRbtAHHUOv+AzTCsRtWSKz9//TwmUXLBM
	spGxCtpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0F13-0002V5-2O; Wed, 21 Aug 2019 01:02:21 +0000
Received: from mx0a-001b2d01.pphosted.com ([148.163.156.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0F0x-0002Uj-P5
 for kexec@lists.infradead.org; Wed, 21 Aug 2019 01:02:18 +0000
Received: from pps.filterd (m0098409.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x7L11sw4015177
 for <kexec@lists.infradead.org>; Tue, 20 Aug 2019 21:02:15 -0400
Received: from e32.co.us.ibm.com (e32.co.us.ibm.com [32.97.110.150])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2ugnuqp94m-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Tue, 20 Aug 2019 21:02:15 -0400
Received: from localhost
 by e32.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <bauerman@linux.ibm.com>;
 Wed, 21 Aug 2019 02:02:14 +0100
Received: from b03cxnp07029.gho.boulder.ibm.com (9.17.130.16)
 by e32.co.us.ibm.com (192.168.1.132) with IBM ESMTP SMTP Gateway: Authorized
 Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Wed, 21 Aug 2019 02:02:12 +0100
Received: from b03ledav004.gho.boulder.ibm.com
 (b03ledav004.gho.boulder.ibm.com [9.17.130.235])
 by b03cxnp07029.gho.boulder.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 x7L12BJf60424694
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 21 Aug 2019 01:02:11 GMT
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C1B8078060;
 Wed, 21 Aug 2019 01:02:11 +0000 (GMT)
Received: from b03ledav004.gho.boulder.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 25F537805E;
 Wed, 21 Aug 2019 01:02:10 +0000 (GMT)
Received: from morokweng.localdomain (unknown [9.85.187.8])
 by b03ledav004.gho.boulder.ibm.com (Postfix) with ESMTPS;
 Wed, 21 Aug 2019 01:02:09 +0000 (GMT)
References: <20190715082702.27308-1-svens@stackframe.org>
 <20190715082702.27308-7-svens@stackframe.org>
User-agent: mu4e 1.2.0; emacs 26.2
From: Thiago Jung Bauermann <bauerman@linux.ibm.com>
To: kexec@lists.infradead.org
Subject: Re: [PATCH v4 6/7] kexec_elf: remove unused variable in
 kexec_elf_load()
In-reply-to: <20190715082702.27308-7-svens@stackframe.org>
Date: Tue, 20 Aug 2019 22:02:06 -0300
MIME-Version: 1.0
X-TM-AS-GCONF: 00
x-cbid: 19082101-0004-0000-0000-000015374ADE
X-IBM-SpamModules-Scores: 
X-IBM-SpamModules-Versions: BY=3.00011626; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000287; SDB=6.01249760; UDB=6.00659774; IPR=6.01031309; 
 MB=3.00028251; MTD=3.00000008; XFM=3.00000015; UTC=2019-08-21 01:02:14
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19082101-0005-0000-0000-00008CF3BF72
Message-Id: <87sgpvmiup.fsf@morokweng.localdomain>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-21_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 suspectscore=1 phishscore=0 bulkscore=0 spamscore=0
 clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
 mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.0.1-1906280000 definitions=main-1908210006
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_180217_650211_6B58BE57 
X-CRM114-Status: GOOD (  20.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.156.1 listed in list.dnswl.org]
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

> base was never assigned, so we can remove it.
>
> Reviewed-by: Christophe Leroy <christophe.leroy@c-s.fr>
> Signed-off-by: Sven Schnelle <svens@stackframe.org>
> ---
>  kernel/kexec_elf.c | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/kernel/kexec_elf.c b/kernel/kexec_elf.c
> index e346659af324..9421eebbacf0 100644
> --- a/kernel/kexec_elf.c
> +++ b/kernel/kexec_elf.c
> @@ -350,7 +350,7 @@ int kexec_elf_load(struct kimage *image, struct elfhdr *ehdr,
>  			 struct kexec_buf *kbuf,
>  			 unsigned long *lowest_load_addr)
>  {
> -	unsigned long base = 0, lowest_addr = UINT_MAX;
> +	unsigned long lowest_addr = UINT_MAX;
>  	int ret;
>  	size_t i;
>  
> @@ -372,7 +372,7 @@ int kexec_elf_load(struct kimage *image, struct elfhdr *ehdr,
>  		kbuf->bufsz = size;
>  		kbuf->memsz = phdr->p_memsz;
>  		kbuf->buf_align = phdr->p_align;
> -		kbuf->buf_min = phdr->p_paddr + base;
> +		kbuf->buf_min = phdr->p_paddr;
>  		ret = kexec_add_buffer(kbuf);
>  		if (ret)
>  			goto out;
> @@ -382,9 +382,6 @@ int kexec_elf_load(struct kimage *image, struct elfhdr *ehdr,
>  			lowest_addr = load_addr;
>  	}
>  
> -	/* Update entry point to reflect new load address. */
> -	ehdr->e_entry += base;
> -
>  	*lowest_load_addr = lowest_addr;
>  	ret = 0;
>   out:

Reviewed-by: Thiago Jung Bauermann <bauerman@linux.ibm.com>

-- 
Thiago Jung Bauermann
IBM Linux Technology Center


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
