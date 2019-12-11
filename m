Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BF911A538
	for <lists+kexec@lfdr.de>; Wed, 11 Dec 2019 08:42:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dDam2ynGyDDwIqZHPpdjw6WjQc2BY661ql4PvpOrpes=; b=pU2/jpvzPGLDcOBwE9BlFmBpgO
	e2mWJVHx5LNP54PzuQ1MxakTU5PNnOkSAsRdK1LRMhJiWAg+fObvMF/f5TOfuP45jdryVH7SphXqS
	vTYaGVHNOQHelcgoRVX9VKTCM0YMNBMK6Y8PsTetgWr6cghFpdWhlz2KYi40vV+BHV34ISDzfkE7s
	3Yj4fEuESnjgwhcFAN/ypK/iEJGk5UYmkEu1B41P7DZiyPPUPHlQaYcv2/NVizFL6b47Y8zdZNpl1
	8y8ExqxMHkyiAIokh9I67S1IF1yiS5/AzGPbZ/CzJJhiFsrvjDM/CdaK+tBMOr+89VqDQeH9qMXqF
	bjjNN+Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iewdD-000720-Qr; Wed, 11 Dec 2019 07:41:59 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iewdA-00070P-7J
 for kexec@lists.infradead.org; Wed, 11 Dec 2019 07:41:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576050109;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=jmZ+2v4McX4xLHQHjkmFqjS1rMnTD56LDlx/BH4jDlE=;
 b=CqAC8Jzg88CRFpDfsDXGzNi5mFYhbDq4AdyS40NPw2hCGMMI2ZcbcnuSrpoU6fRjj0libW
 HBY0IiDaZrsra8JeklXdjt9G7m4KeKacaHfZl16dUHFExPd5wtAHFwwCTkeYrBobCKN8Zo
 H2QSWTWoSWNijjXYcjVGjUE0dkBcAx4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-284-yuXFFjtdOqSGdpwsMsytQg-1; Wed, 11 Dec 2019 02:41:45 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 918B9184B3EE;
 Wed, 11 Dec 2019 07:41:44 +0000 (UTC)
Received: from [10.72.8.21] (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 96BA35C1B0;
 Wed, 11 Dec 2019 07:41:43 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile: assign bitmap2 fd for sub process during
 refiltering
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
References: <1575358627-17152-1-git-send-email-piliu@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC035977E6@BPXM09GP.gisp.nec.co.jp>
 <0d793e2d-6698-6543-13de-a3de8732df75@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC03597A16@BPXM09GP.gisp.nec.co.jp>
From: piliu <piliu@redhat.com>
Message-ID: <22c89e8b-49ab-0cd2-2e63-9e380ad4ba8a@redhat.com>
Date: Wed, 11 Dec 2019 15:41:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC03597A16@BPXM09GP.gisp.nec.co.jp>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: yuXFFjtdOqSGdpwsMsytQg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_234156_539291_4D214ED7 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 12/10/2019 04:10 AM, Kazuhito Hagio wrote:
> 
>> -----Original Message-----
>> From: piliu <piliu@redhat.com>
>> Sent: Monday, December 9, 2019 1:06 AM
>> To: Hagio Kazuhito(萩尾 一仁) <k-hagio@ab.jp.nec.com>; kexec@lists.infradead.org
>> Subject: Re: [PATCH] makedumpfile: assign bitmap2 fd for sub process during refiltering
>>
>>
>>
>> On 12/07/2019 06:11 AM, Kazuhito Hagio wrote:
>>> Hi Pingfan,
>>>
>>>> -----Original Message-----
>>>> In refiltering mode, each sub process inherits bitmap2->fd from parent.
>>>> Then they lseek()/read() on the same fd, which means that they interference
>>>> with each other.
>>>>
>>>> This breaks the purpose of SPLITTING_FD_BITMAP(i) for each sub process.
>>>> Fix it by assigning a sub process dedicated fd to bitmap2->fd.
>>>>
>>>> Signed-off-by: Pingfan Liu <piliu@redhat.com>
>>>
>>> Thanks for the patch.
>>> I'm still reading the code, but it might be better to apply this to bitmap1->fd
>>> as well?  see you next week..
>> Yes. Although during my test, bitmap1 is not touched, but it is a
>> reasonable step to against any future bug.
> 
> Reading the code, I think
> - the issue might occur not only in refiltering, but also the first filtering
>   with --split and --work-dir option (forced non-cyclic mode).
> - pefer to gather things for --split option into writeout_multiple_dumpfiles()
>   if we can, for readability.
Yes, all of the cases suffer from sharing fd across processes
> 
> So does the following patch work for you and your test?
> I could not have reproduced the issue yet.
I tried to fetch a machine to test. It pass 50 times test with your
patch. While if without this patch, it failed about 1 out of 4 times.
> 
> diff --git a/makedumpfile.c b/makedumpfile.c
> index b9e9dfbd45ba..674c6a00e2dd 100644
> --- a/makedumpfile.c
> +++ b/makedumpfile.c
> @@ -10091,6 +10091,10 @@ writeout_multiple_dumpfiles(void)
>  			info->split_start_pfn = SPLITTING_START_PFN(i);
>  			info->split_end_pfn   = SPLITTING_END_PFN(i);
>  
> +			if (!info->flag_cyclic) {
> +				info->bitmap1->fd = info->fd_bitmap;
> +				info->bitmap2->fd = info->fd_bitmap;
> +			}
>  			if (!reopen_dump_memory())
>  				exit(1);
>  			if ((status = writeout_dumpfile()) == FALSE)
> 
> 
> BTW, what do you see when the issue occurs? an error or broken dump?
The test case is refiltering, "makedumpfile --split  -d 31
/root/vmcore-p9b-21 dumpfile_{1,2,3} 2>&1"
And it can not complete the dump.

Thanks,
Pingfan

> 
> Thanks,
> Kazu
> 
>>
>> Thanks,
>> Pingfan
>>>
>>> Thanks,
>>> Kazu
>>>
>>>> ---
>>>>  makedumpfile.c | 3 ++-
>>>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/makedumpfile.c b/makedumpfile.c
>>>> index d76a435..1dc8640 100644
>>>> --- a/makedumpfile.c
>>>> +++ b/makedumpfile.c
>>>> @@ -8857,7 +8857,8 @@ write_kdump_pages_and_bitmap_cyclic(struct cache_data *cd_header, struct cache_d
>>>>  	if (info->flag_cyclic) {
>>>>  		if (!prepare_bitmap2_buffer())
>>>>  			return FALSE;
>>>> -	}
>>>> +	} else if (info->flag_refiltering)
>>>> +		info->bitmap2->fd = info->fd_bitmap;
>>>>
>>>>  	/*
>>>>  	 * Write pages and bitmap cyclically.
>>>> --
>>>> 2.7.5
>>>>
>>>
>>>
>>>
>>> _______________________________________________
>>> kexec mailing list
>>> kexec@lists.infradead.org
>>> http://lists.infradead.org/mailman/listinfo/kexec
>>>
>>
> 
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
