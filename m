Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE2012A8EB
	for <lists+kexec@lfdr.de>; Wed, 25 Dec 2019 19:50:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N3Zs1BBQmW3IuYiTwO2mh9BLB0Eh/nDEVzWl5yrIxhM=; b=hAzfSQR4v8IMvY+SW1ncNSqgp
	rsY8JBtqOlpeK1BxUB2mckqOlY8niE+E5No+8w5NBLchKY+vtz2pMDrW0OjVQhVweAuaRV/BQ2KYL
	75yxBawQz4oHQbBE0fX8+8xhu0cUu+ef6IugT+L4vjIZbXbBDZhCKsOU1syENd8mnHS2CzwBgVPTo
	qnh0jlGhwqSETf5Se7Xf17uJErKnWxJonZyxY+G70SSE23iKJmVU6A/RYLnrd7BMoxl/ud1AIyAlE
	Wx/Pd3JEzHS1h8EU6GDQXBdfdE9S6hBkqxdKicn8xcEsjocBQ4Gv3OwJyBXNMcUrFEI24BDCVk98O
	slXgJWcFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikBjS-000744-Gh; Wed, 25 Dec 2019 18:50:06 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikBjF-0006xG-Qt
 for kexec@lists.infradead.org; Wed, 25 Dec 2019 18:49:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577299788;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=285kDepmv9QK1DA/8vrnMjbxXwuHVWfi0yZmFm9MG4s=;
 b=ZcnzPFqWfq7ZHhkG3ZYYH1yDUklTgfhbTPRozc1lOFyU9JCuqhr8urQD1CIW19w/yLcSnt
 HJ6+nWsT/TeMGgTthwpyKpLIC48Ldh015qkafFcqamP9a/yHlZ0o3m3B52bhahS6CJS/C4
 FIZkgr9OEjmNMLJEXuHenZIzCE3ovMA=
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com
 [209.85.216.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-405-lTroQhygPY2mZ-422SySww-1; Wed, 25 Dec 2019 13:49:47 -0500
Received: by mail-pj1-f70.google.com with SMTP id n89so3987279pji.6
 for <kexec@lists.infradead.org>; Wed, 25 Dec 2019 10:49:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=285kDepmv9QK1DA/8vrnMjbxXwuHVWfi0yZmFm9MG4s=;
 b=nPyffmHbCapY1d+pPUCyvHPXFVqDiXs+au9BcrdLkNkoreS6XjMeigbe5C2LuOPxbS
 zCW5yEYzwmgRuMY35DitbgleD8mv6VJvwp5EwpWIvAmfCmNdrLYkvAho/ZJxVuY9a0Pv
 Yoak7tLPXcbjohc+m3QVB369uNzyGdbPJOGAvHa7eUmPjXiRbucos4IRkDkGX6tGu6AF
 R0gnl8sTSuqPQHou1R8M3wXNj8iuoQf+/BjI3EudkK9AAPqbnED1eD1GizJb3mglZlSr
 BK/+ph2F+6M8E+Z16gEaKVbvMa8ibE5Lb4nzpeExhqhqTwGuHInB/mRFzelyllCeUubd
 OnKw==
X-Gm-Message-State: APjAAAUQXBWWWhPH1DMTiY4EBxmfKG1ezAjx2dNiX45SVzoqsfUXuVKB
 STt2fcWz9zDVzeyCUaYN5mfdYwuLNXGf5LbKzcDM2d8TQqIQwo3zryRoEecRq/yt7gmiXg9O0nA
 FJAItvIv0bLy6Bq39qjYR
X-Received: by 2002:a17:902:b681:: with SMTP id
 c1mr43364898pls.220.1577299785933; 
 Wed, 25 Dec 2019 10:49:45 -0800 (PST)
X-Google-Smtp-Source: APXvYqyZq0WNOzdua1RfDEkn3HqURrkcIdrDtqUjWUQg9SWvt9FzZCJpCtHEmlsjvv06Sjav1Dxdww==
X-Received: by 2002:a62:7c54:: with SMTP id x81mr43381216pfc.180.1577299783422; 
 Wed, 25 Dec 2019 10:49:43 -0800 (PST)
Received: from localhost.localdomain ([122.177.237.105])
 by smtp.gmail.com with ESMTPSA id b98sm7539818pjc.16.2019.12.25.10.49.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 25 Dec 2019 10:49:42 -0800 (PST)
Subject: Re: [RESEND PATCH v5 5/5] Documentation/vmcoreinfo: Add documentation
 for 'TCR_EL1.T1SZ'
To: James Morse <james.morse@arm.com>, linux-kernel@vger.kernel.org
References: <1575057559-25496-1-git-send-email-bhsharma@redhat.com>
 <1575057559-25496-6-git-send-email-bhsharma@redhat.com>
 <8a982138-f1fa-34e8-18fd-49a79cea3652@arm.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <b7d8d603-d9fe-3e18-c754-baf2015acd16@redhat.com>
Date: Thu, 26 Dec 2019 00:19:35 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <8a982138-f1fa-34e8-18fd-49a79cea3652@arm.com>
Content-Language: en-US
X-MC-Unique: lTroQhygPY2mZ-422SySww-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_104953_944009_E8D478EB 
X-CRM114-Status: GOOD (  19.60  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.177.237.105 listed in dnsbl.sorbs.net]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.81 listed in wl.mailspike.net]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, linux-doc@vger.kernel.org,
 Will Deacon <will@kernel.org>, x86@kernel.org, kexec@lists.infradead.org,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Dave Anderson <anderson@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, bhupesh.linux@gmail.com,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 Steve Capper <steve.capper@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi James,

On 12/12/2019 04:02 PM, James Morse wrote:
> Hi Bhupesh,

I am sorry this review mail skipped my attention due to holidays and 
focus on other urgent issues.

> On 29/11/2019 19:59, Bhupesh Sharma wrote:
>> Add documentation for TCR_EL1.T1SZ variable being added to
>> vmcoreinfo.
>>
>> It indicates the size offset of the memory region addressed by TTBR1_EL1
> 
>> and hence can be used for determining the vabits_actual value.
> 
> used for determining random-internal-kernel-variable, that might not exist tomorrow.
> 
> Could you describe how this is useful/necessary if a debugger wants to walk the page
> tables from the core file? I think this is a better argument.
> 
> Wouldn't the documentation be better as part of the patch that adds the export?
> (... unless these have to go via different trees? ..)

Ok, will fix the same in v6 version.

>> diff --git a/Documentation/admin-guide/kdump/vmcoreinfo.rst b/Documentation/admin-guide/kdump/vmcoreinfo.rst
>> index 447b64314f56..f9349f9d3345 100644
>> --- a/Documentation/admin-guide/kdump/vmcoreinfo.rst
>> +++ b/Documentation/admin-guide/kdump/vmcoreinfo.rst
>> @@ -398,6 +398,12 @@ KERNELOFFSET
>>   The kernel randomization offset. Used to compute the page offset. If
>>   KASLR is disabled, this value is zero.
>>   
>> +TCR_EL1.T1SZ
>> +------------
>> +
>> +Indicates the size offset of the memory region addressed by TTBR1_EL1
> 
>> +and hence can be used for determining the vabits_actual value.
> 
> 'vabits_actual' may not exist when the next person comes to read this documentation (its
> going to rot really quickly).
> 
> I think the first half of this text is enough to say what this is for. You should include
> words to the effect that its the hardware value that goes with swapper_pg_dir. You may
> want to point readers to the arm-arm for more details on what the value means.

Ok, got it. Fixed this in v6, which should be on its way shortly.

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
