Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA04F140409
	for <lists+kexec@lfdr.de>; Fri, 17 Jan 2020 07:39:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R/bRDSGsst84iwm3qW7vNLWikEKHVB+qaIreDQDaugg=; b=h50QXCk1OQ4/ir
	VbydNfjumWwFatQHeuhF7q8nBjvCV6KiD6Vqh544z36SLA61GznEZeMR7TSIv9KDePhxF9OgerDkd
	4utDcgPS586nzp9vKV0XjCa3mFCVXEhwFtPFhyO+GCMexadPyalH3RfYx5VvFETZ79bMj5WnkDQV7
	Z1j2BEQXdpNhLaEBvyC+ZO+nJOSQt2Ze4yDsJSdPymvQlR5Ag8W11E6uR99oT2Q3tbQy9wKlDhpgO
	lxDQ14/JIxLa6Ypc4yPFj43qY/aH99e9InxgDoEhHshs6eZAIUu4JFOD6xkrtu18f90aWvKAD+ntJ
	RPG2VWyhwl1HNYxWOk4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isLHo-0008QT-Ot; Fri, 17 Jan 2020 06:39:16 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isLHc-000819-Uy
 for kexec@lists.infradead.org; Fri, 17 Jan 2020 06:39:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id 2so11461621pfg.12
 for <kexec@lists.infradead.org>; Thu, 16 Jan 2020 22:39:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qoGhKsw9njPCsVqhBgGDUjd3mZZWEg1Do/3ARWWrEnE=;
 b=s/WQUqCpJ/otQdILmZN4kMXwv+OvpqQTWZrFXDrVmfQCXk40kW8L/1mytrqYuph7rl
 qJymOAktCwDsTal59VPez9RD6Xn5tcBZc3fFt+KqNs6Iiou3PKa+87ZoLKghmJ//l3jS
 WwFJYWn/l2ASDiBacAG+K1MjIVZhU9VeEXTKxcHJhd9Sk1u0XkvCxBQCbbb82S9C7Fg/
 3PhQ1q5KUuMNLa9SML7PdKGGpIONuEVUrkxHmWKucRp7nZ0BkHt6GCxaKiDzAsOb37n5
 NoWY3ROGiZXsFHwQfx46Euc/Ay14HUqeSUveK5BJWb7xCgeG/oTNrymmhKRSS9SmViNL
 b5gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=qoGhKsw9njPCsVqhBgGDUjd3mZZWEg1Do/3ARWWrEnE=;
 b=m3I+0OcDoqQhFDm2z3TbgBP1QvnmLphdKDNP+XoEm2wZfNMU1dL2ubw9FKRZrFhLVD
 w6nrWcFgEAIrpHBIEF736m2V1Y3C50VMMyhu2quVhpvJae53lRPd6rG6sG7XOLfW/XLL
 CXwyx0qCxNyZ6oG4G7AjT4JmMKmFwUAT02GzQKz8qTVxkfFLO2HYWUrUgBXQRgtiLyRQ
 0xaqb/pGRsE02cpdM/MlvcXYG2U67XQhS8dXD89aqk6yJPI1XGxYVQhKwpeG7BV8DAHV
 +JE9uYMta+pBor91ZHMJOIPDeYmXU1NAL5avksmxEVlkVBiKbOHMX+jcBaNcZXpC3Ind
 yy3w==
X-Gm-Message-State: APjAAAVpWPX6nGiajM7rtRpN0acZtM+77Mo5fG5w/Uf6V9CHw8gWLB5P
 Ztx5tvdByE+IMAccIb/HSIwrFQ==
X-Google-Smtp-Source: APXvYqxshHEtIBhkYe3pqbdjsUhIFpP2CQnKZlGkd85/PMr8HWJvNdCLF4aVLUdtYSZCFZJPBWdelQ==
X-Received: by 2002:a65:6216:: with SMTP id d22mr43662473pgv.437.1579243143423; 
 Thu, 16 Jan 2020 22:39:03 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id
 j20sm27428024pfe.168.2020.01.16.22.39.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Jan 2020 22:39:02 -0800 (PST)
Date: Fri, 17 Jan 2020 15:38:33 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
Message-ID: <20200117063832.GQ28530@linaro.org>
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
 <20200114053825.GC28530@linaro.org>
 <20200116180857.GA22420@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200116180857.GA22420@willie-the-truck>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_223905_012755_D75B98D5 
X-CRM114-Status: GOOD (  30.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Thu, Jan 16, 2020 at 06:08:58PM +0000, Will Deacon wrote:
> On Tue, Jan 14, 2020 at 02:38:26PM +0900, AKASHI Takahiro wrote:
> > On Mon, Jan 13, 2020 at 11:21:06AM +0000, Will Deacon wrote:
> > > On Fri, Jan 10, 2020 at 11:19:16AM -0500, Pavel Tatashin wrote:
> > > > On Fri, Jan 10, 2020 at 11:05 AM Will Deacon <will@kernel.org> wrote:
> > > > > On Thu, Jan 09, 2020 at 08:32:54AM +0000, Will Deacon wrote:
> > > > > > On Thu, Jan 09, 2020 at 09:46:55AM +0900, AKASHI Takahiro wrote:
> > > > > > > On Wed, Jan 08, 2020 at 05:48:39PM +0000, Will Deacon wrote:
> > > > > > > > On Mon, Dec 16, 2019 at 11:12:47AM +0900, AKASHI Takahiro wrote:
> > > > > > > > > diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> > > > > > > > > index 12a561a54128..d24b527e8c00 100644
> > > > > > > > > --- a/arch/arm64/include/asm/kexec.h
> > > > > > > > > +++ b/arch/arm64/include/asm/kexec.h
> > > > > > > > > @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
> > > > > > > > >  struct kimage_arch {
> > > > > > > > >         void *dtb;
> > > > > > > > >         unsigned long dtb_mem;
> > > > > > > > > +       /* Core ELF header buffer */
> > > > > > > > > +       void *elf_headers;
> > > > > > > > > +       unsigned long elf_headers_mem;
> > > > > > > > > +       unsigned long elf_headers_sz;
> > > > > > > > >  };
> > > > > > > >
> > > > > > > > This conflicts with the cleanup work from Pavel. Please can you check my
> > > > > > > > resolution? [1]
> > > > > > >
> > > > > > > I don't know why we need to change a type of dtb_mem,
> > > > > > > otherwise it looks good.
> > > > > > >
> > > > > > > (I also assume that you notice that kimage_arch is of no use for kexec.)
> > > > > >
> > > > > > Yes, that's why I'd like the resolution checked. If you reckon it's cleaner
> > > > > > to drop Pavel's patch altogether in light of your changes, we can do that
> > > > > > instead.
> > > > > >
> > > > > > Thoughts?
> > > > >
> > > > > Well, I've reverted the cleanup patch so please shout if you'd prefer
> > > > > something else.
> > > > 
> > > > As I understand, the only concern was the type change for dtb_mem.
> > > > This was one of the review comments for my patch
> > > > https://lore.kernel.org/lkml/20191204155938.2279686-21-pasha.tatashin@soleen.com/
> > > > 
> > > > (I believe it was from Marc Zyngier), I add a number of new fields,
> > > > and they all should be phys_addr_t, this is why I change dtb_mem to
> > > > phys_addr_t to be consistent.
> > > 
> > > Sure, but I've only queued the first part of your series and that cleanup
> > > patch doesn't make a lot of sense when applied against Akashi's work. I'm
> > > happy to take stuff on top if you both agree to it, but having half of the
> > > struct use unsigned long and the other half use phys_addr_t is messy.
> > 
> > Logically, whether dtb_mem is a "unsigned long" or phys_addr_t doesn't
> > matter unless the kernel is compiled under LLP64.
> > As far as the existing kexec code, either generic or arm64-specific,
> > is concerned, however, "unsigned long is widely used as a physical address
> > (For example, see kexec_buf definition) over the code.
> > 
> > (Oops, reboot_code_buffer_phys is a phys_addr_t :)
> > 
> > So as long as my kexec_file (and associated kdump) patch comes first
> > before Pavel's, I'd like to keep using "unsigned long".
> > Then, you can change "unsigned long" to phys_addr_t in your patch
> > for whatever reason it is.
> > 
> > Please note that, if you want to do that, it would be better to modify
> > not only kimage_arch but also all the occurrences of "unsigned long"
> > to phys_addr_t for maintaining the integrity.
> > 
> > In addition, in my kexec_file kdump code, I still believe that
> > "#ifdef CONFIG_KEXEC_FILE" should stay before the definition of
> > kimage_arch as kimage_arch is of no use for normal kexec code.
> > 
> > Again,
> > "#ifdef" statement may be moved forward once additional fields be
> > added later by Pavel's patch, say, "[PATCH v8 15/25] arm64: kexec:
> > move relocation function setup" for any reason.
> > 
> > I believe that this way gives us a logical and consistent view of
> > history of changes.
> > Make sense?
> 
> This is a bit much to stick in a merge commit, so I'll stick with the revert
> for now and you can send patches on top if you want it changed.

Are you asking me or Pavel? And on top of which branch?

Thanks,
-Takahiro Akashi


> Cheers,
> 
> Will

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
