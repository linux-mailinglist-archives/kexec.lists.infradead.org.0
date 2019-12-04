Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C75AD1128E7
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 11:09:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RhDUmTVcecoANWsdrKIL3rjTZTGhwMYsBaSW8iQR9uM=; b=fS9fjugh4AdUoF
	D35QwNWnKj7FRBo1lsKrpsi6RjIrz2WSTttsMMY2bO8fEgDLURDVnceP9mxBI4OJVN2DbAPIRrO1g
	DrpJbtkRZKGvZigyiYH98zmfiQcUTZmY3fOhWdL2sTM7/yCM3Rxi92NjAMAyZ6rTxEBiXpvzvUr/U
	LSdxeeIlSdWX1cFwrHDVOrAOI2Foj2IEjxlH/ZkGzKVMvsVJ9oYpas8cybLwezUS92mk0qQLip2z5
	VDcKlgT8eBcIM66d/ZEP6iErObOs68XoutXU/YCOr4ljFUNn76SFxiWVgbYbKfA8JephNKAiL8uJd
	ZnYzYwxsaE0rdtRyR/iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRb3-0003kw-SF; Wed, 04 Dec 2019 10:09:25 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRb0-0003kO-DH
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 10:09:23 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so7727643wrl.13
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 02:09:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=raeCtC+dljo0qv32p8D/VuYe95bGrREsFJM19wAQqc8=;
 b=KNNpisM7QR9D0AXGY6S7UtWvFsgqwnLg/z6E+LyY7Z/PFWc7kGnrlFu6LchmdcXtYB
 aGFWUf0fW3q2g4j/4SBrKGBNBUhWnrbisCgGNU+O/SwpJUczZTtjNty4T25ydIG98Gu0
 9tjFel3etp4TbLMLYVAJvGJ/BCaQguKU3Q3dh1z+kJlCkHV35WqyjNshFNyMS9cS0Ycj
 6tjRA7/DKcSkDXS+IXLd/FUf4vTKPti5MP+kI0gqdrTwTDhcsKKQVajzp5h4/DqqfJzf
 wy5VqBQLFm7a2H9Tj5EmLjZ+SXc0gFVn8MlNI8+nmozpPRfnwMOu53xH3mUvHFM6ToJJ
 VfOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=raeCtC+dljo0qv32p8D/VuYe95bGrREsFJM19wAQqc8=;
 b=MIPKGcADGpWKZ5hT7V4Y0YTk972lEgBJ8FhuNSzyVMJewPBCVHq4CxSkA4GCLoXNtn
 T2+eID1FDky36gaVAMET9eLQieB8gRZpyzJ8+xPiXGT/csvqxreziKru2n5s7LNTSqG1
 blf6Bzhn2xpkjKGuRurxd1OJDeez9EkC3xiAFa16NwG0gKfq/CbyyD375q+Bma9B072m
 BpTQF/w993vuD/jM1YLkNCeYWG85cpKnn8d9Lz1NxkEevnZ24hM4MEs/GR2QuUB4u72q
 RCClrfA+qQkkJf84Z4btJGkqrz1Aa7gNPnSnEjskPHEim5nvOrhrPGrS28QfX+aUSNjz
 jFVA==
X-Gm-Message-State: APjAAAWXyx3u8jQKxhNdfcgvGB+CZr12EX5UcPzXZhUM33StJsd2yVen
 EOdS6qKoNZLMOQSixlS1U3c=
X-Google-Smtp-Source: APXvYqx/rwFl+MtYvoLLcqkK+aNtlxTL2ZxgvfhoeTj9iJCmEq1E6xWqdoYOZqa5c48gZrbUu0/hyA==
X-Received: by 2002:adf:f78d:: with SMTP id q13mr3059791wrp.365.1575454160662; 
 Wed, 04 Dec 2019 02:09:20 -0800 (PST)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
 by smtp.gmail.com with ESMTPSA id h17sm7904846wrs.18.2019.12.04.02.09.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 02:09:19 -0800 (PST)
Date: Wed, 4 Dec 2019 11:09:17 +0100
From: Ingo Molnar <mingo@kernel.org>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
Message-ID: <20191204100917.GC114697@gmail.com>
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
 <20191204075917.GA10587@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204075917.GA10587@dhcp-128-65.nay.redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_020922_468234_5A8235D2 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mingo.kernel.org[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


* Dave Young <dyoung@redhat.com> wrote:

> On 12/04/19 at 03:52pm, Dave Young wrote:
> > Michael Weiser reported he got below error during a kexec rebooting:
> > esrt: Unsupported ESRT version 2904149718861218184.
> > 
> > The ESRT memory stays in EFI boot services data, and it was reserved
> > in kernel via efi_mem_reserve().  The initial purpose of the reservation
> > is to reuse the EFI boot services data across kexec reboot. For example
> > the BGRT image data and some ESRT memory like Michael reported. 
> > 
> > But although the memory is reserved it is not updated in X86 e820 table.
> > And kexec_file_load iterate system ram in io resource list to find places
> > for kernel, initramfs and other stuff. In Michael's case the kexec loaded
> > initramfs overwritten the ESRT memory and then the failure happened.
> 
> s/overwritten/overwrote :)  If need a repost please let me know..

No need, I've edited the typo. :)

Thanks,

	Ingo

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
