Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4A71166B7
	for <lists+kexec@lfdr.de>; Mon,  9 Dec 2019 07:06:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dqo4CZPIfHl9aZCzIUl79vg0Bz7pCO4iAkBDmM2iNwM=; b=fqzOv2ELihVgi6F1BOYLqR4VMc
	0BO4DE4vUxtXUvzHa/RoYX5yzj2uAsJ4Czw0shyWB0Co4s/Nq4u+GahwC9xCx5riiOgqi1q/MdZmM
	kAEARHITAIaNba1ojQx7CSBMcBGw4yl00Y1FDlu9+4Fp6VyEot1mbSvIS6YBHhCoR/OsLdN+mxJue
	4IDebF/Fu1gKFw7Fkyvzq8yuU6ZotYggk7yv9xJ74FTgRGelBb+F5K0Xs6Ok7ILNORLXN2UJaPrnS
	JQlR8mUU2E2vjj1RAE/el0Zyv6db8WPBPGtn8/AoUvE/iWiNLtGub362ITGMDwKcGfQVQDZty0DQN
	yDnWNf4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieCBJ-0000lF-RX; Mon, 09 Dec 2019 06:06:05 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieCBG-0000kR-KV
 for kexec@lists.infradead.org; Mon, 09 Dec 2019 06:06:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575871561;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WqG7iEx++56Lp59Xz9sBFFj/jl8umLn5A4tZmPSYgcQ=;
 b=N8/FFMbV40QzIKMZP2iQacSckdKit+B2WK5BrM8F5n9/Sa5ZCE9mKFqrZZFGTgVRzWFQQE
 s3efyD92Z1dB3TEZTJejcqCkkkNeWoH/b79+jyAN1pYXiI/hDUGfthQsTyxM6cCfM0OQVS
 DV7fYRO2pIw1TOmvVyE+agcgArgIgMI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-122-xPElYQnsM52pc3sH2KxmxA-1; Mon, 09 Dec 2019 01:05:58 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0C951189DF66;
 Mon,  9 Dec 2019 06:05:58 +0000 (UTC)
Received: from [10.72.8.34] (ovpn-8-34.pek2.redhat.com [10.72.8.34])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0CC7D5C21A;
 Mon,  9 Dec 2019 06:05:56 +0000 (UTC)
Subject: Re: [PATCH] makedumpfile: assign bitmap2 fd for sub process during
 refiltering
To: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
References: <1575358627-17152-1-git-send-email-piliu@redhat.com>
 <4AE2DC15AC0B8543882A74EA0D43DBEC035977E6@BPXM09GP.gisp.nec.co.jp>
From: piliu <piliu@redhat.com>
Message-ID: <0d793e2d-6698-6543-13de-a3de8732df75@redhat.com>
Date: Mon, 9 Dec 2019 14:05:54 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <4AE2DC15AC0B8543882A74EA0D43DBEC035977E6@BPXM09GP.gisp.nec.co.jp>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: xPElYQnsM52pc3sH2KxmxA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191208_220602_739602_0941FC47 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



On 12/07/2019 06:11 AM, Kazuhito Hagio wrote:
> Hi Pingfan,
> 
>> -----Original Message-----
>> In refiltering mode, each sub process inherits bitmap2->fd from parent.
>> Then they lseek()/read() on the same fd, which means that they interference
>> with each other.
>>
>> This breaks the purpose of SPLITTING_FD_BITMAP(i) for each sub process.
>> Fix it by assigning a sub process dedicated fd to bitmap2->fd.
>>
>> Signed-off-by: Pingfan Liu <piliu@redhat.com>
> 
> Thanks for the patch.
> I'm still reading the code, but it might be better to apply this to bitmap1->fd
> as well?  see you next week..
Yes. Although during my test, bitmap1 is not touched, but it is a
reasonable step to against any future bug.

Thanks,
Pingfan
> 
> Thanks,
> Kazu
> 
>> ---
>>  makedumpfile.c | 3 ++-
>>  1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/makedumpfile.c b/makedumpfile.c
>> index d76a435..1dc8640 100644
>> --- a/makedumpfile.c
>> +++ b/makedumpfile.c
>> @@ -8857,7 +8857,8 @@ write_kdump_pages_and_bitmap_cyclic(struct cache_data *cd_header, struct cache_d
>>  	if (info->flag_cyclic) {
>>  		if (!prepare_bitmap2_buffer())
>>  			return FALSE;
>> -	}
>> +	} else if (info->flag_refiltering)
>> +		info->bitmap2->fd = info->fd_bitmap;
>>
>>  	/*
>>  	 * Write pages and bitmap cyclically.
>> --
>> 2.7.5
>>
> 
> 
> 
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/kexec
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
