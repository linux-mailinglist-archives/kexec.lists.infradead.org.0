Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EC313A0B9
	for <lists+kexec@lfdr.de>; Tue, 14 Jan 2020 06:39:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kZYrzvGvUA1m100e4qAjRbrnljRXPvG5sXy8gSkYe8=; b=prz8yHFj55XMlN
	MDmLAspfAy8lPfCpDyq6E94y6sNj0cqTCQQjc+OhLiaX/z+zPbhGsZzvRtpc5/oYpphCKJJgr8fOl
	9oPfjVxRSuSOS2sNuq87dyg9FDxpbaQwZ8Wv1HrCofRsjHd/aDiH5i0bTkQX44t03PMhjH3y3lPW8
	hoLNHQYwq1IkT1a0BiIreTW59AeLBitcnjIdRnsu/nUJuMa/g7ZxpW5VbRMJuSY75ScxdAgT4pT4w
	MvyJBMyC7wj7Nv/KD831iMGnWYN0rwlh1OtZzHfybpL1fFRUvhZonZ/KgmX8t8VldLUB9PAAZy7Ot
	DPCtV8w6f97IKDxmxFcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irEv6-0005JA-Pm; Tue, 14 Jan 2020 05:39:16 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irEut-0005Ar-Nv
 for kexec@lists.infradead.org; Tue, 14 Jan 2020 05:39:05 +0000
Received: by mail-pf1-x441.google.com with SMTP id 195so6010138pfw.11
 for <kexec@lists.infradead.org>; Mon, 13 Jan 2020 21:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=b7n7f6CO+MVHSnzRHpdk3x7t2oPCQj5a+pENYzfOC30=;
 b=YJPiX4Ge01qi2cDTShLqn/kh8bn3kNpTe5wc6z/fyvCC9EDLk8Rmj0/aHpYr/8VEnV
 YgRfBvDscL6BZ77SuTmaBS/tzT4b3aYb/dPDxvP1bIOoqHvbAwBa7c/JN/2A7YFYN1xl
 wDdCTjGzHguRdQQvj6H5wwLErsVRa8E1qKtUw+g8/hmPUWofSJdFNSfZrSVVo3OiQuHG
 8GO31cKYHdcndYcuBoGB1dfAgfV52zThePZTYGmm5TPq1Ikq/t3J0NPSQ7DxMHrtyzpN
 /z9qoQ+GcscNZOsihnHhrxHfIFF9Y5j74lHiAx7Ng2p2+Yb/gCNsfgdJQb0+vf4wfy7w
 Z61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=b7n7f6CO+MVHSnzRHpdk3x7t2oPCQj5a+pENYzfOC30=;
 b=H/CsEZswcC+sgp9mBQk1iyY3ZvjZ5OFP8C8Lagpu2RQYursjmSra+NoEDAMUFssCRD
 Nf/bCmfQI2zjJnYn2CV+I4eqfsczygB0oYuqEAMG2uTMjyRVcUcWpIZxqlIVGNna3ztf
 oRIec6OLwX55OYdHmHKd8u9Fp2+30GS1lsOzb030g9gE7Rjx0jCWf2qCgysg6f9ozEKr
 UbD/KTKIV/uF9cEQWVLIn+XudceCmSOqvH+8Y9AcyOLJWAdx86AFCeVw88/OQyHsQbbu
 iQbTelfLpPww0R0vXsmgEdwb/DkUTvt5RfslG3UOxY4joVN2kSe1LXHR+KST/LxuBaLh
 nITA==
X-Gm-Message-State: APjAAAXVXRi5g+auZC4TCu45lfo8ec/nhOLIif6cQ/YEt9AZZD/DTFar
 K8pr7p33fcEyrXaz0pnvT/CkwQ==
X-Google-Smtp-Source: APXvYqzdkeUzjHA8klmXiM9MmZ8IBJ7Myn8KLjVg80cTCkgU0kSt6TFpBU5rwYA56+DKgb5tSJo/vw==
X-Received: by 2002:a62:be12:: with SMTP id l18mr24082217pff.226.1578980342200; 
 Mon, 13 Jan 2020 21:39:02 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id y5sm5803030pfn.185.2020.01.13.21.38.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Jan 2020 21:39:01 -0800 (PST)
Date: Tue, 14 Jan 2020 14:38:26 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
Message-ID: <20200114053825.GC28530@linaro.org>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Will Deacon <will@kernel.org>,
 Pavel Tatashin <pasha.tatashin@soleen.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, robh+dt@kernel.org,
 frowand.list@gmail.com, Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
 <20191216021247.24950-3-takahiro.akashi@linaro.org>
 <20200108174839.GB21242@willie-the-truck>
 <20200109004654.GA28530@linaro.org>
 <20200109083254.GA7280@willie-the-truck>
 <20200110160549.GA25437@willie-the-truck>
 <CA+CK2bAy-vfoz3kgUjZB74Hrobgu-a8H4pv6RbA_tbq++NWz5g@mail.gmail.com>
 <20200113112105.GB2337@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200113112105.GB2337@willie-the-truck>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_213903_811252_8556778A 
X-CRM114-Status: GOOD (  25.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Pavel Tatashin <pasha.tatashin@soleen.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, Will Deacon <will.deacon@arm.com>,
 LKML <linux-kernel@vger.kernel.org>, robh+dt@kernel.org,
 James Morse <james.morse@arm.com>, frowand.list@gmail.com,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Will, Pavel,

On Mon, Jan 13, 2020 at 11:21:06AM +0000, Will Deacon wrote:
> On Fri, Jan 10, 2020 at 11:19:16AM -0500, Pavel Tatashin wrote:
> > On Fri, Jan 10, 2020 at 11:05 AM Will Deacon <will@kernel.org> wrote:
> > >
> > > On Thu, Jan 09, 2020 at 08:32:54AM +0000, Will Deacon wrote:
> > > > On Thu, Jan 09, 2020 at 09:46:55AM +0900, AKASHI Takahiro wrote:
> > > > > On Wed, Jan 08, 2020 at 05:48:39PM +0000, Will Deacon wrote:
> > > > > > On Mon, Dec 16, 2019 at 11:12:47AM +0900, AKASHI Takahiro wrote:
> > > > > > > diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> > > > > > > index 12a561a54128..d24b527e8c00 100644
> > > > > > > --- a/arch/arm64/include/asm/kexec.h
> > > > > > > +++ b/arch/arm64/include/asm/kexec.h
> > > > > > > @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
> > > > > > >  struct kimage_arch {
> > > > > > >         void *dtb;
> > > > > > >         unsigned long dtb_mem;
> > > > > > > +       /* Core ELF header buffer */
> > > > > > > +       void *elf_headers;
> > > > > > > +       unsigned long elf_headers_mem;
> > > > > > > +       unsigned long elf_headers_sz;
> > > > > > >  };
> > > > > >
> > > > > > This conflicts with the cleanup work from Pavel. Please can you check my
> > > > > > resolution? [1]
> > > > >
> > > > > I don't know why we need to change a type of dtb_mem,
> > > > > otherwise it looks good.
> > > > >
> > > > > (I also assume that you notice that kimage_arch is of no use for kexec.)
> > > >
> > > > Yes, that's why I'd like the resolution checked. If you reckon it's cleaner
> > > > to drop Pavel's patch altogether in light of your changes, we can do that
> > > > instead.
> > > >
> > > > Thoughts?
> > >
> > > Well, I've reverted the cleanup patch so please shout if you'd prefer
> > > something else.
> > 
> > As I understand, the only concern was the type change for dtb_mem.
> > This was one of the review comments for my patch
> > https://lore.kernel.org/lkml/20191204155938.2279686-21-pasha.tatashin@soleen.com/
> > 
> > (I believe it was from Marc Zyngier), I add a number of new fields,
> > and they all should be phys_addr_t, this is why I change dtb_mem to
> > phys_addr_t to be consistent.
> 
> Sure, but I've only queued the first part of your series and that cleanup
> patch doesn't make a lot of sense when applied against Akashi's work. I'm
> happy to take stuff on top if you both agree to it, but having half of the
> struct use unsigned long and the other half use phys_addr_t is messy.

Logically, whether dtb_mem is a "unsigned long" or phys_addr_t doesn't
matter unless the kernel is compiled under LLP64.
As far as the existing kexec code, either generic or arm64-specific,
is concerned, however, "unsigned long is widely used as a physical address
(For example, see kexec_buf definition) over the code.

(Oops, reboot_code_buffer_phys is a phys_addr_t :)

So as long as my kexec_file (and associated kdump) patch comes first
before Pavel's, I'd like to keep using "unsigned long".
Then, you can change "unsigned long" to phys_addr_t in your patch
for whatever reason it is.

Please note that, if you want to do that, it would be better to modify
not only kimage_arch but also all the occurrences of "unsigned long"
to phys_addr_t for maintaining the integrity.

In addition, in my kexec_file kdump code, I still believe that
"#ifdef CONFIG_KEXEC_FILE" should stay before the definition of
kimage_arch as kimage_arch is of no use for normal kexec code.

Again,
"#ifdef" statement may be moved forward once additional fields be
added later by Pavel's patch, say, "[PATCH v8 15/25] arm64: kexec:
move relocation function setup" for any reason.

I believe that this way gives us a logical and consistent view of
history of changes.
Make sense?

Thanks,
-Takahiro Akashi


> Will

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
