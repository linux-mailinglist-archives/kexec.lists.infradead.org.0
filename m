Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AC911D258
	for <lists+kexec@lfdr.de>; Thu, 12 Dec 2019 17:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v61xSFLIX1vYxzNGbbUKEGnLGIHElyvGduoTxW9Ebw4=; b=j4Fi6hKtCMsrZX
	VTvqyYIHTl0BoMpXLyRumx4eiqrtNuR/tE9LAwbFarYekFrBKTtgC0jfVjiKQj5+k9lx8gPn7EQuk
	pf5Mse7inufYAgd33mAU6xItf0XBk64n0oP/+Xkc/9AjiTnDvme6X8Nh06AHz7SjIkxhhdWEOk+gJ
	s/MPuys/hOv24aI+XHON8V08a7KQXfsdnHOagnw4Gf8P8aaneWzl4tMzlPWEBSzWHH6k+yQnznwog
	61X1uasTNP+nnoBkZPjT7Jv/9ImypzWihTtk+XxX0/SqG5Y0GfSnoz2TsbYMDaLg37cdQANyqwZif
	0Kzo2bCSdeOnWVoTMD+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifRNa-0006dA-BI; Thu, 12 Dec 2019 16:31:54 +0000
Received: from mx0b-001b2d01.pphosted.com ([148.163.158.5]
 helo=mx0a-001b2d01.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifRNW-0006cM-HP
 for kexec@lists.infradead.org; Thu, 12 Dec 2019 16:31:52 +0000
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
 by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBCGS4Dt142801; Thu, 12 Dec 2019 11:31:45 -0500
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2wujxreb7y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Dec 2019 11:31:45 -0500
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
 by pps.reinject (8.16.0.36/8.16.0.36) with SMTP id xBCGSE8w143855;
 Thu, 12 Dec 2019 11:31:45 -0500
Received: from ppma01wdc.us.ibm.com (fd.55.37a9.ip4.static.sl-reverse.com
 [169.55.85.253])
 by mx0a-001b2d01.pphosted.com with ESMTP id 2wujxreb7j-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Dec 2019 11:31:45 -0500
Received: from pps.filterd (ppma01wdc.us.ibm.com [127.0.0.1])
 by ppma01wdc.us.ibm.com (8.16.0.27/8.16.0.27) with SMTP id xBCGVFfV005243;
 Thu, 12 Dec 2019 16:31:49 GMT
Received: from b01cxnp23032.gho.pok.ibm.com (b01cxnp23032.gho.pok.ibm.com
 [9.57.198.27]) by ppma01wdc.us.ibm.com with ESMTP id 2wr3q6yd2y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 12 Dec 2019 16:31:49 +0000
Received: from b01ledav003.gho.pok.ibm.com (b01ledav003.gho.pok.ibm.com
 [9.57.199.108])
 by b01cxnp23032.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 xBCGViwl39321934
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 12 Dec 2019 16:31:44 GMT
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 125C9B2064;
 Thu, 12 Dec 2019 16:31:44 +0000 (GMT)
Received: from b01ledav003.gho.pok.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 74CD1B2066;
 Thu, 12 Dec 2019 16:31:43 +0000 (GMT)
Received: from [9.152.96.21] (unknown [9.152.96.21])
 by b01ledav003.gho.pok.ibm.com (Postfix) with ESMTPS;
 Thu, 12 Dec 2019 16:31:43 +0000 (GMT)
Subject: Re: [PATCH] makedumpfile/s390: Add get_kaslr_offset() for s390x
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
References: <20191203222725.64734-1-zaslonko@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597AB9@BPXM09GP.gisp.nec.co.jp>
 <323f61d4-6aab-a0b4-faa3-e41756fb9913@linux.ibm.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597F4E@BPXM09GP.gisp.nec.co.jp>
From: Zaslonko Mikhail <zaslonko@linux.ibm.com>
Message-ID: <8fd807f1-c296-1a34-e42a-a102df62f3a0@linux.ibm.com>
Date: Thu, 12 Dec 2019 17:31:42 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03597F4E@BPXM09GP.gisp.nec.co.jp>
Content-Language: en-US
X-TM-AS-GCONF: 00
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-12_04:2019-12-12,2019-12-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 lowpriorityscore=0
 malwarescore=0 mlxlogscore=999 impostorscore=0 priorityscore=1501
 clxscore=1015 suspectscore=0 bulkscore=0 spamscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-1910280000 definitions=main-1912120128
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_083150_705420_F351EE50 
X-CRM114-Status: GOOD (  29.58  )
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
Cc: "prudo@linux.ibm.com" <prudo@linux.ibm.com>,
 "dyoung@redhat.com" <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

On 12.12.2019 17:12, Kazuhito Hagio wrote:
> Hi Mikhail,
> 
>> -----Original Message-----
>> Hello Kazu,
>>
>> I think we can try to generalize the kaslr offset extraction.
>> I won't speak for other architectures, but for s390 that get_kaslr_offset_arm64()
>> should work fine. The only concern of mine is this TODO statement:
>>
>> if (_text <= vaddr && vaddr <= _end) {
>> 	DEBUG_MSG("info->kaslr_offset: %lx\n", info->kaslr_offset);
>> 	return info->kaslr_offset;
>> 	} else {
>> 	/*
>> 	* TODO: we need to check if it is vmalloc/vmmemmap/module
>> 	* address, we will have different offset
>> 	*/
>> 	return 0;
>> }
>>
>> Could you explain this one?
> 
> Probably it was considered that the check would be needed to support
> the whole KASLR behavior when get_kaslr_offset_x86_64() was written
> originally.
> 
> But in the current makedumpfile for x86_64 and arm64 supporting KASLR,
> the offset we need is the one for symbol addresses in vmlinux only.
> As I said below, module symbol addresses are retrieved from vmcore.
> Other addresses should not be passed to the function for now, as far
> as I know.
> 
> So I think the TODO comment is confusing, and it would be better to
> remove it or change it to something like:
> /*
>  * Returns 0 if vaddr does not need the offset to be added,
>  * e.g. for module address.
>  */
> 
> But if s390 uses get_kaslr_offset() in its arch-specific code to
> adjust addresses other than kernel text address, we might need to
> modify it for s390, not generalize it.

Currently, s390 doesn't use get_kaslr_offset() in its arch-specific 
code. 

> 
> Thanks,
> Kazu
> 
>>
>> Thanks,
>> Mikhail
>>
>> On 09.12.2019 23:02, Kazuhito Hagio wrote:
>>> Hi Mikhail,
>>>
>>> Sorry for late reply.
>>>
>>>> -----Original Message-----
>>>> Since kernel v5.2 KASLR is supported on s390. In makedumpfile however no
>>>> support has been added yet. This patch adds the arch specific function
>>>> get_kaslr_offset() for s390x.
>>>> Since the values in vmcoreinfo are already relocated, the patch is
>>>> mainly relevant for vmlinux processing (-x option).
>>>
>>> In the current implementation of makedumpfile, the get_kaslr_offset(vaddr)
>>> is supposed to return the KASLR offset only when the offset is needed to
>>> add to the vaddr.  So generally symbols from kernel (vmlinux) need it, but
>>> symbols from modules are resolved dynamically and don't need the offset.
>> \>
>>> This patch always returns the offset if any, as a result, I guess this patch
>>> will not work as expected with module symbols in filter config file.
>>>
>>> So... How about making get_kaslr_offset_arm64() general for other archs
>>> (get_kaslr_offset_general() or something), then using it also for s390?
>>> If OK, I can do that generalization.
>>>
>>> Thanks,
>>> Kazu
>>>
>>>>
>>>> Signed-off-by: Philipp Rudo <prudo@linux.ibm.com>
>>>> Signed-off-by: Mikhail Zaslonko <zaslonko@linux.ibm.com>
>>>> ---
>>>>  arch/s390x.c   | 32 ++++++++++++++++++++++++++++++++
>>>>  makedumpfile.h |  3 ++-
>>>>  2 files changed, 34 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/arch/s390x.c b/arch/s390x.c
>>>> index bf9d58e..892df14 100644
>>>> --- a/arch/s390x.c
>>>> +++ b/arch/s390x.c
>>>> @@ -122,6 +122,38 @@ get_machdep_info_s390x(void)
>>>>  	return TRUE;
>>>>  }
>>>>
>>>> +unsigned long
>>>> +get_kaslr_offset_s390x(unsigned long vaddr)
>>>> +{
>>>> +	unsigned int i;
>>>> +	char buf[BUFSIZE_FGETS], *endp;
>>>> +
>>>> +	if (!info->file_vmcoreinfo)
>>>> +		return FALSE;
>>>> +
>>>> +	if (fseek(info->file_vmcoreinfo, 0, SEEK_SET) < 0) {
>>>> +		ERRMSG("Can't seek the vmcoreinfo file(%s). %s\n",
>>>> +		       info->name_vmcoreinfo, strerror(errno));
>>>> +		return FALSE;
>>>> +	}
>>>> +
>>>> +	while (fgets(buf, BUFSIZE_FGETS, info->file_vmcoreinfo)) {
>>>> +		i = strlen(buf);
>>>> +		if (!i)
>>>> +			break;
>>>> +		if (buf[i - 1] == '\n')
>>>> +			buf[i - 1] = '\0';
>>>> +		if (strncmp(buf, STR_KERNELOFFSET,
>>>> +			    strlen(STR_KERNELOFFSET)) == 0) {
>>>> +			info->kaslr_offset =
>>>> +				strtoul(buf + strlen(STR_KERNELOFFSET), &endp, 16);
>>>> +			DEBUG_MSG("info->kaslr_offset: %lx\n", info->kaslr_offset);
>>>> +		}
>>>> +	}
>>>> +
>>>> +	return info->kaslr_offset;
>>>> +}
>>>> +
>>>>  static int
>>>>  is_vmalloc_addr_s390x(unsigned long vaddr)
>>>>  {
>>>> diff --git a/makedumpfile.h b/makedumpfile.h
>>>> index ac11e90..26f6247 100644
>>>> --- a/makedumpfile.h
>>>> +++ b/makedumpfile.h
>>>> @@ -1071,11 +1071,12 @@ unsigned long long vaddr_to_paddr_ppc(unsigned long vaddr);
>>>>  int get_machdep_info_s390x(void);
>>>>  unsigned long long vaddr_to_paddr_s390x(unsigned long vaddr);
>>>>  int is_iomem_phys_addr_s390x(unsigned long addr);
>>>> +unsigned long get_kaslr_offset_s390x(unsigned long vaddr);
>>>>  #define find_vmemmap()		stub_false()
>>>>  #define get_phys_base()		stub_true()
>>>>  #define get_machdep_info()	get_machdep_info_s390x()
>>>>  #define get_versiondep_info()	stub_true()
>>>> -#define get_kaslr_offset(X)	stub_false()
>>>> +#define get_kaslr_offset(X)	get_kaslr_offset_s390x(X)
>>>>  #define vaddr_to_paddr(X)	vaddr_to_paddr_s390x(X)
>>>>  #define paddr_to_vaddr(X)	paddr_to_vaddr_general(X)
>>>>  #define is_phys_addr(X)		is_iomem_phys_addr_s390x(X)
>>>> --
>>>> 2.17.1
>>>>
>>>
>>>
> 
> 

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
