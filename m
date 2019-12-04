Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD70611353D
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 19:57:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMFucCeSsEHFyMvp7dx19JMHCxOtdUsXSniIw0dLAfM=; b=VS7vmFy/cAGZNo
	zzCV+J9gLbQ+RulkoDqRCYkOxnDAfcxbl7EAdEl7S9ZXFspQ+i5NcsPEgRF6m/bMWBS5eBIfUeKdl
	gu31SuPMHwvGpSd+xSlKwZy7g9rUPsTj/iBuuRxswD1jGugElTz+p1kKkWC9hIfFNfzxnLEYGEgH1
	3V2BS7ZKpQHbbFAGeB40EQlc3LetnoNpBGpSVFU7D9ucU1rrZ6z23NJC60/zKnCkF1GI6u1kct5Fr
	VJRIUu1fHbyCsISfAyq0ZsQTqVmzZF7YOxWRkwIXVG2rdc6M34sKH56YiJbHpKZcEDJVd77ITcVI1
	pjpgX7UkSnlmeEQvl8YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZpy-0002Kw-Oi; Wed, 04 Dec 2019 18:57:22 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZpv-0002Kd-Pv
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 18:57:21 +0000
Received: by mail-qk1-x742.google.com with SMTP id m188so999849qkc.4
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 10:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=pl+QectoOe2tlORL4kSqxLKnGi0kFMFcWUCFict5CFQ=;
 b=ullNBA7Tpj02XN/Ij9O6vGSCk/DfijrMPOZMVt2khXUbZesUBx2zrIUnwg1Zz45WhT
 k2+5aGY5dQAOiVkigEfzER3/W2UYWoaelfWyAevJbWebvGrW5EIrAR5u68lZbzlJKLDb
 D2mJ0V89ms3tRgt3hcNPB7HKJPi+32trg65QLldmEPfEzqByOpuk7ow5r219lrJxKp54
 Iz2Z7N2rfT1qsmhIqiUv/lKNK0At9ESQoFuU3RVsbg3g2vvXWQO79ipl9HirR8xbi21i
 5ssWSufP+oyX+h1hQITaR0vWkN3KORomOwGlRKCfpfBFc23utoMh4pdRAkE3gHzcMFrS
 hJLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=pl+QectoOe2tlORL4kSqxLKnGi0kFMFcWUCFict5CFQ=;
 b=MRAFo0FTnpma/EoPgfGba3yImBL6yNlnbtxVgQ30zVZ0c5K5rArIQ+vZqgBXVYhJkr
 LWtnrAw4zlky6WTt4Jyt7CzQrcN81l3IIvDiWsH+9i0qyqJTkJ7GlEHB5H0vjD1UyUTT
 qiPVVGYMoKb/LwL5peHYo5tgSBjjdSxJiKSEP/RfaenJngZfljSERd/s4b4NBog0EDy+
 whzS0GJKxUa54E0P5kp8VmhKnfY76334XNU5vMB55tOfnpDss7bCvtP7zza4+v9O1InW
 x6MhCQibvpQqLSPWBSEaAwQOejxb/6CuU6S6CRqKiIVk3skdVvETG8/VaRkVYSjU3kaf
 JX+A==
X-Gm-Message-State: APjAAAUklqrTvIVInMiXT39K/UY1Hd5njakoGHbX95yWSi9+iHKwJV1J
 nCk/1wMZYasZAKSq0j50hQ==
X-Google-Smtp-Source: APXvYqzYagbf+8MKmRfPhkRrCdTYGu+PIANnuXLrboBBQV1O8E/AeMAjY5ftbN/PiqxDsPfKJtBlMg==
X-Received: by 2002:a37:4841:: with SMTP id v62mr4408966qka.444.1575485834425; 
 Wed, 04 Dec 2019 10:57:14 -0800 (PST)
Received: from gabell
 (209-6-122-159.s2973.c3-0.arl-cbr1.sbo-arl.ma.cable.rcncustomer.com.
 [209.6.122.159])
 by smtp.gmail.com with ESMTPSA id 62sm4113910qkm.121.2019.12.04.10.57.13
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 04 Dec 2019 10:57:13 -0800 (PST)
Date: Wed, 4 Dec 2019 13:57:08 -0500
From: Masayoshi Mizuma <msys.mizuma@gmail.com>
To: James Morse <james.morse@arm.com>
Subject: Re: [PATCH] efi/memreserve: register reservations as 'reserved' in
 /proc/iomem
Message-ID: <20191204185708.hdoa5gzmfr547q53@gabell>
References: <20191204145233.11962-1-ardb@kernel.org>
 <20191204171744.o3ijdspnelqn5fgd@gabell>
 <08f05b18-12b2-0ba4-b819-b95ba27d1862@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08f05b18-12b2-0ba4-b819-b95ba27d1862@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_105719_841287_9B92C648 
X-CRM114-Status: GOOD (  20.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (msys.mizuma[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 linux-efi@vger.kernel.org, kexec@lists.infradead.org, d.hatayama@fujitsu.com,
 Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 06:17:59PM +0000, James Morse wrote:
> Hi Masa,
> 
> On 04/12/2019 17:17, Masayoshi Mizuma wrote:
> > Thank you for sending the patch, but unfortunately it doesn't work for the issue...
> > 
> > After applied your patch, the LPI tables are marked as reserved in
> > /proc/iomem like as:
> > 
> > 80300000-a1fdffff : System RAM
> >   80480000-8134ffff : Kernel code
> >   81350000-817bffff : reserved
> >   817c0000-82acffff : Kernel data
> >   830f0000-830fffff : reserved # Property table
> >   83480000-83480fff : reserved # Pending table
> >   83490000-8349ffff : reserved # Pending table
> > 
> > However, kexec tries to allocate memory from System RAM, it doesn't care
> > the reserved in System RAM.
> 
> > I'm not sure why kexec doesn't care the reserved in System RAM, however,
> 
> Hmm, we added these to fix a problem with the UEFI memory map, and more recently ACPI
> tables being overwritten by kexec.
> 
> Which version of kexec-tools are you using? Could you try:
> https://git.linaro.org/people/takahiro.akashi/kexec-tools.git/commit/?h=arm64/resv_mem

Thanks a lot! It worked and the issue is gone with Ard's patch and
the linaro kexec (arm64/resv_mem branch).

Ard, please feel free to add:

	Tested-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

> 
> 
> > if the kexec behaivor is right, the LPI tables should not belong to
> > System RAM.
> 
> > Like as:
> > 
> > 80300000-830effff : System RAM
> >   80480000-8134ffff : Kernel code
> >   81350000-817bffff : reserved
> >   817c0000-82acffff : Kernel data
> > 830f0000-830fffff : reserved # Property table
> > 83480000-83480fff : reserved # Pending table
> > 83490000-8349ffff : reserved # Pending table
> > 834a0000-a1fdffff : System RAM
> > 
> > I don't have ideas to separete LPI tables from System RAM... so I tried
> > to add a new file to inform the LPI tables to userspace.
> 
> This is how 'nomap' memory appears, we carve it out of System RAM. A side effect of this
> is kdump can't touch it, as you've told it this isn't memory.
> 
> As these tables are memory, mapped by the linear map, I think Ard's patch is the right
> thing to do ... I suspect your kexec-tools doesn't have those patches from Akashi to make
> it honour all second level entries.
 
I used the kexec on the top of master branch:
git://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git

Should we use the linaro kexec for aarch64 machine?
Or will the arm64/resv_mem branch be merged to the kexec on
git.kernel.org...?

Thanks!
Masa

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
