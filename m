Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6211939D1
	for <lists+kexec@lfdr.de>; Thu, 26 Mar 2020 08:49:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:MIME-Version:
	Date:From:References:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WeHmgTOqayh6VXOMeJIXtu77MNhTvOh0AJJEYlYjf1Q=; b=QT4oGsKY0gbNaK
	mc5sa0rs7yixhZXRBwLEXPDkE3SsBlYdTZ49HD7UXHNIYYus4gJRfznietAtr3zPDsEAlYyliRf/B
	3IFHSkzj8Cv8uW+vtlayD85ZlBjyURgvwVMyrjjOG8mNKURvak+YWwrmEqCgM42V6ABSoo5/Y5MU1
	7IpEpPfiZRmD4V2hwyffG3xaFV3ibeZyWUc5aaG+GlQqQQEmQEDZ7oAiu7Ouobk9273sz3VlAZ5Em
	k0IDvPZ9ia0gQY4bvHnb/IrQNRlfWlVERll07Agv68ZFJo84TTQWMiupuNIzksUoPA2KnEAaNYYyx
	YtZnpwh/s9xDY+3JnIxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHNGB-00089O-JI; Thu, 26 Mar 2020 07:49:03 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHNG8-00088w-IT
 for kexec@lists.infradead.org; Thu, 26 Mar 2020 07:49:02 +0000
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02Q7YM2m146771
 for <kexec@lists.infradead.org>; Thu, 26 Mar 2020 03:48:58 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
 by mx0b-001b2d01.pphosted.com with ESMTP id 2ywbuxpxm9-1
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
 for <kexec@lists.infradead.org>; Thu, 26 Mar 2020 03:48:58 -0400
Received: from localhost
 by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only!
 Violators will be prosecuted
 for <kexec@lists.infradead.org> from <hbathini@linux.ibm.com>;
 Thu, 26 Mar 2020 07:48:52 -0000
Received: from b06cxnps4075.portsmouth.uk.ibm.com (9.149.109.197)
 by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
 Authorized Use Only! Violators will be prosecuted; 
 (version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
 Thu, 26 Mar 2020 07:48:49 -0000
Received: from d06av24.portsmouth.uk.ibm.com (d06av24.portsmouth.uk.ibm.com
 [9.149.105.60])
 by b06cxnps4075.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 02Q7mr9J58654896
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 26 Mar 2020 07:48:53 GMT
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id EBCE642047;
 Thu, 26 Mar 2020 07:48:52 +0000 (GMT)
Received: from d06av24.portsmouth.uk.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id DDEBD42049;
 Thu, 26 Mar 2020 07:48:51 +0000 (GMT)
Received: from [9.102.22.222] (unknown [9.102.22.222])
 by d06av24.portsmouth.uk.ibm.com (Postfix) with ESMTP;
 Thu, 26 Mar 2020 07:48:51 +0000 (GMT)
Subject: Re: [PATCHv3] powerpc/crashkernel: take "mem=" option into account
To: Pingfan Liu <kernelfans@gmail.com>, linuxppc-dev@lists.ozlabs.org
References: <1582121897-24336-1-git-send-email-kernelfans@gmail.com>
From: Hari Bathini <hbathini@linux.ibm.com>
Date: Thu, 26 Mar 2020 13:18:50 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1582121897-24336-1-git-send-email-kernelfans@gmail.com>
Content-Language: en-US
X-TM-AS-GCONF: 00
x-cbid: 20032607-0016-0000-0000-000002F85B44
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 20032607-0017-0000-0000-0000335C026F
Message-Id: <48c1b852-28e0-9c46-cafa-7c5992f966a7@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-25_15:2020-03-24,
 2020-03-25 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 bulkscore=0
 adultscore=0 mlxscore=0 phishscore=0 impostorscore=0 mlxlogscore=999
 suspectscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2003260048
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_004900_734872_242A3051 
X-CRM114-Status: GOOD (  28.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Michael Ellerman <mpe@ellerman.id.au>, kexec@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello Pingfan,

Thanks for the patch..

On 19/02/20 7:48 PM, Pingfan Liu wrote:
> 'mem=" option is an easy way to put high pressure on memory during some
> test. Hence after applying the memory limit, instead of total mem, the
> actual usable memory should be considered when reserving mem for
> crashkernel. Otherwise the boot up may experience OOM issue.
> 
> E.g. it would reserve 4G prior to the change and 512M afterward, if passing
> crashkernel="2G-4G:384M,4G-16G:512M,16G-64G:1G,64G-128G:2G,128G-:4G", and
> mem=5G on a 256G machine.
> 
> This issue is powerpc specific because it puts higher priority on fadump
> and kdump reservation than on "mem=". Referring the following code:
> 	if (fadump_reserve_mem() == 0)
> 		reserve_crashkernel();
> 	...
> 	/* Ensure that total memory size is page-aligned. */
> 	limit = ALIGN(memory_limit ?: memblock_phys_mem_size(), PAGE_SIZE);
> 	memblock_enforce_memory_limit(limit);
> 
> While on other arches, the effect of "mem=" takes a higher priority and pass
> through memblock_phys_mem_size() before calling reserve_crashkernel().
> 
> Signed-off-by: Pingfan Liu <kernelfans@gmail.com>
> To: linuxppc-dev@lists.ozlabs.org
> Cc: Hari Bathini <hbathini@linux.ibm.com>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: kexec@lists.infradead.org
> ---
> v2 -> v3: improve commit log
>  arch/powerpc/kernel/machine_kexec.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/powerpc/kernel/machine_kexec.c b/arch/powerpc/kernel/machine_kexec.c
> index c4ed328..eec96dc 100644
> --- a/arch/powerpc/kernel/machine_kexec.c
> +++ b/arch/powerpc/kernel/machine_kexec.c
> @@ -114,11 +114,12 @@ void machine_kexec(struct kimage *image)
>  
>  void __init reserve_crashkernel(void)
>  {
> -	unsigned long long crash_size, crash_base;
> +	unsigned long long crash_size, crash_base, total_mem_sz;
>  	int ret;
>  
> +	total_mem_sz = memory_limit ? memory_limit : memblock_phys_mem_size();
>  	/* use common parsing */
> -	ret = parse_crashkernel(boot_command_line, memblock_phys_mem_size(),
> +	ret = parse_crashkernel(boot_command_line, total_mem_sz,
>  			&crash_size, &crash_base);
>  	if (ret == 0 && crash_size > 0) {
>  		crashk_res.start = crash_base;

memory_limit is adjusted after this with the below snippet:

        /* Crash kernel trumps memory limit */
        if (memory_limit && memory_limit <= crashk_res.end) {                           
                memory_limit = crashk_res.end + 1;
                printk("Adjusted memory limit for crashkernel, now 0x%llx\n",           
                       memory_limit);                                                   
        } 

So, either the above snippet must be dropped or the print below should use an updated total_mem_sz
based on adjusted memory_limit. I would prefer the latter..

> @@ -185,7 +186,7 @@ void __init reserve_crashkernel(void)
>  			"for crashkernel (System RAM: %ldMB)\n",
>  			(unsigned long)(crash_size >> 20),
>  			(unsigned long)(crashk_res.start >> 20),
> -			(unsigned long)(memblock_phys_mem_size() >> 20));
> +			(unsigned long)(total_mem_sz >> 20));
>  
>  	if (!memblock_is_region_memory(crashk_res.start, crash_size) ||
>  	    memblock_reserve(crashk_res.start, crash_size)) {
> 

-- 
- Hari


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
