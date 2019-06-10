Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDD093B384
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 12:53:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DvZtnidzsQtxY89pz4ATVypu0ekncOzyMUealH4gbms=; b=EI3fhYLucIAADqyYcsmpiVI7M
	ff/AzeYII8GyFgVhFQZH5KrsaT+iL+WiwLIQG5HN7DfL/PhjLkEUxSH9oylrnkeUraj86HaXe6ZIH
	L4WgjrQZDEfflUxytK11hrGnaXpxqaOanuB6xnYml6IK6gO5YebvoxVMNMpJzXDlibBpIBBc56iKv
	EYS63QlIFQlZ+P/Wx6rDYdn93O+pa4+grAJdzq0dQTtV/++X/xZlHveR6tq2ofHIKfjiSv1AzWUgC
	34YN1ls7mZ50Vj2tc7I0Wr4Uv3uLD0Xb0OjbF7jtIDaAMJT0/uVpHOOgDReDVfzHwbymTdhlKH+w4
	kw4wM56wA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHvO-0001aa-Dm; Mon, 10 Jun 2019 10:53:14 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHvD-0001YW-Q8
 for kexec@lists.infradead.org; Mon, 10 Jun 2019 10:53:12 +0000
Received: by mail-pg1-f195.google.com with SMTP id n2so4834277pgp.11
 for <kexec@lists.infradead.org>; Mon, 10 Jun 2019 03:53:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IrBElB7Dvt+ekOLqOELcuBpGs5ztYGEVdrqPLh5WW7s=;
 b=aQZqJIwP50/+dX4VY+DS8GXrh9pBEAKDg9/PuVfoG7Kj/D7lw2UZBowhFWaDszPOri
 pCm+TPIKKvUf6nSG4tOIKh0zlMa943hCT/0ReyFJ3Dwet0L4sXIap9GA+1v9fZrMd6qe
 VmE8CLjEVEDxKJWFexVsXQuvaVsGC0YmHD1TFdO9CHOmlCX+gdTC+oH4GEfv1yu2cZjc
 FcyPQsqWoAQPmwISGsqKhXZEtHAn3NP52R6yKVVq4HGwHgSrrfdAQx1rTB8rdAetQWiv
 BKjSwIjbEZ9EDG+ThkjC7VRQyLUh5xH4y3ITbYbKo4gusymp6limHvC4wmaKAwVgeU6n
 lmvQ==
X-Gm-Message-State: APjAAAX6dtwGX+I0vh5LqoW6rebJgl+0Okjw5IR4EIT5Y4ta1/tG0uTL
 XPB2qrx1eg7UjjtJG13a4yeLtw==
X-Google-Smtp-Source: APXvYqxPGMw3+1D+l5TB5e4THCbfQTkpsGSeU+iebeT0+u8S9YvnaAd7W1WrJYym+gmERVkL4+w6IQ==
X-Received: by 2002:aa7:808d:: with SMTP id v13mr73501435pff.198.1560163982899; 
 Mon, 10 Jun 2019 03:53:02 -0700 (PDT)
Received: from localhost.localdomain ([122.177.221.32])
 by smtp.gmail.com with ESMTPSA id p43sm10611287pjp.4.2019.06.10.03.52.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 10 Jun 2019 03:53:01 -0700 (PDT)
Subject: Re: [PATCH v3 1/3] arm64, vmcoreinfo : Append 'PTRS_PER_PGD' to
 vmcoreinfo
To: James Morse <james.morse@arm.com>
References: <1553058574-18606-1-git-send-email-bhsharma@redhat.com>
 <1553058574-18606-2-git-send-email-bhsharma@redhat.com>
 <2757805b-61cb-8f4a-1917-0c57012f09df@arm.com>
 <58c6cda9-9fd4-3b3e-740a-7b9b80b1f634@redhat.com>
 <a48bb02c-8f93-4e3b-085d-a6f0e5a1f3a0@arm.com>
 <66da4098-b221-408b-50ca-f3790b943965@redhat.com>
 <380b137b-a611-5c8d-3890-8021084f87fe@redhat.com>
 <2a4af3a0-1342-fdd2-1cfd-e37abb99d8bd@arm.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <3ab2ca1a-95de-cecf-f590-1e2d00bb644b@redhat.com>
Date: Mon, 10 Jun 2019 16:22:55 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <2a4af3a0-1342-fdd2-1cfd-e37abb99d8bd@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_035310_556764_394DBA53 
X-CRM114-Status: GOOD (  28.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Steve Capper <Steve.Capper@arm.com>, kexec@lists.infradead.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Dave Anderson <anderson@redhat.com>, bhupesh.linux@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi James,

On 06/07/2019 08:41 PM, James Morse wrote:
> Hi Bhupesh,
> 
> (sorry for the delay on this)

No problem.

> On 04/05/2019 13:53, Bhupesh Sharma wrote:
>> On 04/03/2019 11:24 PM, Bhupesh Sharma wrote:
>>> On 04/02/2019 10:56 PM, James Morse wrote:
>>>> Yes the kernel code is going to move around, this is why the information we expose via
>>>> vmcoreinfo needs to be thought through: something we would always need, regardless of how
>>>> the kernel implements it.
>>>>
> 
>>>> Pointer-auth changes all this again, as we may prefer to use the bits for pointer-auth in
>>>> one TTB or the other. PTRS_PER_PGD may show the 52bit value in this case, but neither TTBR
>>>> is mapping 52bits of VA.
>>>>
>>>>
>>>>> So far, I have generally come across discussions where the following variations of the
>>>>> address spaces have been proposed/requested:
>>>>> - 48bit kernel VA + 48-bit User VA,
>>>>> - 48-bit kernel VA + 52-bit User VA,
>>>>
>>>> + 52bit kernel, because there is excessive quantities of memory, and the kernel maps it
>>>> all, but 48-bit user, because it never maps all the memory, and we prefer the bits for
>>>> pointer-auth.
>>>>
>>>>> - 52-bit kernel VA + 52-bit User VA.
>>>>
>>>> And...  all four may happen with the same built image. I don't see how you can tell these
>>>> cases apart with the one (build-time-constant!) PTRS_PER_PGD value.
>>>>
>>>> I'm sure some of these cases are hypothetical, but by considering it all now, we can avoid
>>>> three more kernel:vmcoreinfo updates, and three more fix-user-space-to-use-the-new-value.
>>>
>>> Agree.
>>>
>>>> I think you probably do need PTRS_PER_PGD, as this is the one value the mm is using to
>>>> generate page tables. I'm pretty sure you also need T0SZ and T1SZ to know if that's
>>>> actually in use, or the kernel is bodging round it with an offset.
>>>
>>> Sure, I am open to suggestions (as I realize that we need an additional VA_BITS_ACTUAL
>>> variable export'ed for 52-bit kernel VA changes).
> 
> (stepping back a bit:)
> 
> I'm against exposing arch-specific #ifdefs that correspond to how we've configured the
> arch code's interactions with mm. These are all moving targets, we can't have any of it
> become ABI.

Sure, I understand your concerns.

> I have a straw-man for this: What is the value of PTE_FILE_MAX_BITS on your system?
> I have no idea what this value is or means, an afternoon's archaeology would be needed(!).
> This is something that made sense for one kernel version, a better idea came along, and it
> was replaced. If we'd exposed this to user-space, we'd have to generate a value, even if
> it doesn't mean anything. Exposing VA_BITS_ACTUAL is the same.
> 
> (Keep an eye out for when we change the kernel memory map, and any second-guessing based
> on VA_BITS turns out to be wrong)
> 
> 
> What we do have are the hardware properties. The kernel can't change these.
> 
> 
>>> Also how do we standardize reading T0SZ and T1SZ in user-space. Do you propose I make an
>>> enhancement in the cpu-feature-registers interface (see [1]) or the HWCAPS interface
>>> (see [2]) for the same?
> 
> cpufeature won't help you if you've already panic()d and only have the vmcore file. This
> stuff needs to go in vmcoreinfo.
> 
> As long as there is a description of how userspace uses these values, I think adding
> key/values for TCR_EL1.TxSZ to the vmcoreinfo is a sensible way out of this. You probably
> need TTBR1_EL1.BADDR too. (it should be specific fields, to prevent 'new uses' becoming ABI)
> 
> This tells you how the hardware was configured, and covers any combination of TxSZ tricks
> we play, and whether those address bits are used for VA, or ptrauth for TTBR0 or TTRB1.

Fair enough. Let me try and experiment with this suggestion a bit and I 
will come back with a RFC patch/patchset by this weekend. Hopefully, it 
will cover all the weird PA/VA bit combinations we are handling in arm64 
distros these days :)

Thanks,
Bhupesh


>> Any comments on the above points? At the moment we have to carry these fixes in the
>> distribution kernels and I would like to have these fixed in upstream kernel itself.
> 
> 
> Thanks,
> 
> James
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
