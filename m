Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB62525A30
	for <lists+kexec@lfdr.de>; Tue, 21 May 2019 23:55:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sg6lvSQZMdoMyU2lB1Gvfyj3QXK6+Q/rvq0GnxF0g9M=; b=sOh3O+A1dI+RsENxRJGkLUduc
	moRol1554lgTxVbS13SFwfjrDvy5BNSAEZ3pWfYrQqfuCMYtlOQ/g0GkJerZUTvgj9SX5ECyjfmOx
	p+vDQIvLAB1wqk8FltrN3+IYPeTk69FgPps4gZs82HkafOORSK8TJVnQXP8oqi0UxrANfxCCjCnlY
	jpn9ITWWfizrcJukmRPNqD2SFcVI9ZYy9mrfTH1f1yibPnlrgEX1RuxAh3GE9GeW3Arfm3Yqqg71M
	Ju9m2UpPVrr4xbV8XarsrBT6o2twgouZHU8SOERy6EgsbfEq5+2QAIj+92gbKaJ6kSizqFQ7Fnp3j
	OB9qctI2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTCiv-0002tx-Vu; Tue, 21 May 2019 21:55:05 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTCis-0002Q1-8Q
 for kexec@lists.infradead.org; Tue, 21 May 2019 21:55:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id t187so154980pgb.13
 for <kexec@lists.infradead.org>; Tue, 21 May 2019 14:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=netronome-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=rVLanPSf7IgKvhY0KijI1QM75WnUf0t3XqlmcH7VqBQ=;
 b=O3J3IiZhKiNxPSSKsaEdABEJjWCDGtEge+p5Bv74A40Lguj1fFzMPlOXMAqvdGm2Sn
 96tz8ynCDv+EKT3VBuviPObPWoOWkpQySevpTXsDTVzFRPnFYZ6iIuOwBRFqwIkv9c7q
 DcIIQa46zUIiAX8Tjig2AZUBAdLgv4+JgXIzYlBS98mcRRI2GxtedH+UGshTaeQ1eYSQ
 2KbHx0tzpNY1qQVoKdvb8pNUZaF+It3zigxRJJxBlVFyKbANJ7vlODMFdaSjjp947B0k
 q3eihZtS9A2lLpMPgLLKQ6IAvwcEQl9O/zhZpzUOn3uBzI1gEcR/1WrhPwqY7+hVN/kT
 npbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=rVLanPSf7IgKvhY0KijI1QM75WnUf0t3XqlmcH7VqBQ=;
 b=fp6hlc5rsn7AWhsH6gj4bd7eg4+ozTSVCeGfidS8PTYJR7Y3rY00WxP68M1rIaXjFe
 WLee/js6g9rARRX5xRXOBrRPRLOb304NH3fDWVo73v8KGI2tDyF09w9z78rvjYJK4Dju
 z3MfaXeqw63yK23ufkFoDEZ1HgbsundbsjrcL/Y/xqrUsk5x4ouaN/XwfZCuBMcDEJxW
 3p+IxkHHxMTl7POuJHa0f7FCGo35YJoEDuOJCmUdu6kNQaXZaiFe6AO3Jk7sA3UxGTMY
 ZVYBd+XxPAqXgvmy6OAT0rlxSa8M4eC48g/LVfcKIGmokf0Zrs9vBZqUNg5JbnWdn8Ih
 6Kdg==
X-Gm-Message-State: APjAAAUKr6uXijljPPMRTTT8DFa7lKlYOQapcIcMrvovlMIWtOBr1vl/
 AKqSP1RJ3ZZwSWUpddAtYl0qsA==
X-Google-Smtp-Source: APXvYqwy+hWodtg/yBs57pbUzk7WR6gHqZkb8c+GchzFI7Z2aIjZQmIP00cGHUzuXzTP8/Q/wEkm7Q==
X-Received: by 2002:a65:610a:: with SMTP id z10mr85831747pgu.54.1558475700862; 
 Tue, 21 May 2019 14:55:00 -0700 (PDT)
Received: from [172.22.3.235] ([66.60.152.14])
 by smtp.gmail.com with ESMTPSA id i12sm27186257pfd.33.2019.05.21.14.54.59
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 14:54:59 -0700 (PDT)
Subject: Re: [PATCH v6 1/2] x86/kexec: Build identity mapping for EFI systab
 and ACPI tables
To: Baoquan He <bhe@redhat.com>, Dave Young <dyoung@redhat.com>,
 j-nomura@ce.jp.nec.com
References: <20190424092944.30481-1-bhe@redhat.com>
 <20190424092944.30481-2-bhe@redhat.com>
 <20190429002318.GA25400@MiWiFi-R3L-srv> <20190429135536.GC2324@zn.tnic>
 <20190513014248.GA16774@MiWiFi-R3L-srv> <20190513070725.GA20105@zn.tnic>
 <20190513073254.GB16774@MiWiFi-R3L-srv> <20190513075006.GB20105@zn.tnic>
 <20190513080653.GD16774@MiWiFi-R3L-srv>
 <20190514032208.GA25875@dhcp-128-65.nay.redhat.com>
 <20190514033338.GA6612@MiWiFi-R3L-srv>
From: Dirk van der Merwe <dirk.vandermerwe@netronome.com>
Message-ID: <c640061a-a7c5-5bc3-87b6-0ee7af5a4b43@netronome.com>
Date: Tue, 21 May 2019 14:53:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <20190514033338.GA6612@MiWiFi-R3L-srv>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_145502_450937_499EEEEB 
X-CRM114-Status: GOOD (  15.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: fanc.fnst@cn.fujitsu.com, kasong@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Borislav Petkov <bp@alien8.de>, hpa@zytor.com, tglx@linutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


On 5/13/19 8:33 PM, Baoquan He wrote:
> On 05/14/19 at 11:22am, Dave Young wrote:
>> On 05/13/19 at 04:06pm, Baoquan He wrote:
>>> Hi Dave,
>>>
>>> On 05/13/19 at 09:50am, Borislav Petkov wrote:
>>>> On Mon, May 13, 2019 at 03:32:54PM +0800, Baoquan He wrote:
>>>>> This is a critical bug which breaks memory hotplug,
>>>> Please concentrate and stop the blabla:
>>>>
>>>> 36f0c423552d ("x86/boot: Disable RSDP parsing temporarily")
>>>>
>>>> already explains what the deal is. This code was *purposefully* disabled
>>>> because we ran out of time and it broke a couple of machines. Don't make
>>> I remember your machine is the one on whihc the issue is reported. Could
>>> you also test it and confirm if these all things found ealier are
>>> cleared out?
>>>
>> I did some tests on the laptop,  thing is:
>> 1. apply the 3 patches (two you posted + Boris's revert commit 52b922c3d49c)
>>     on latest Linus master branch, everything works fine.
>>
>> 2. build and test the tip/next-merge-window branch, kernel hangs early
>> without output, (both 1st boot and kexec boot)
> Thanks, Dave.
>
> Yeah, I also tested on a HP machine, problem reprodued on the current
> master branch when revert commit 52b922c3d49c.
>
> Then apply these two patches, problem solved.
>
> Tried boris's next-merge-window branch too, kexec works very well.
>
> Dirk, Junichi, feel free to add your test result if you have time.


I tested this with the patches (plus revert of the workaround) applied 
against stable 5.1 and it works fine for me there. Thanks!

Where can I find the next-merge-window tree?

I can test against that too.


Best regards

Dirk


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
