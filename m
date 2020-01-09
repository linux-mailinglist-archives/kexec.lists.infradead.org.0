Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A61611350A0
	for <lists+kexec@lfdr.de>; Thu,  9 Jan 2020 01:48:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9VeF0aMBmDbSwKl8Skr7jpb1Q75dPe9H7kf+Hs3/RIc=; b=QrzFn9cOnLkQa7
	HaYI1QLy+tfsb8hZI7Twi1XVeF4vZ8i69lK/XjnJWv3Hz6zHDjDeiu1h7p9br/PtMxy0lc1ZH35nD
	fVjlYiSzTVdDDgy4F2dkn1rcnuDxup1T++BuONB+w5gPnRkI8DdmMHP4QAU8Tc2x9U/1HnQDrRlvr
	P4qb189C0D3RVcFl+Dy3/frPU3qJQAQJbVGEZxf2Gvru31TAOTaAshMB51IJOFIDjFaV9yuLJzYgK
	6XINRf04Mbvta4+TDb0GQ+KNIcGEPdRQ1y+J3XTByFKG43F0tfnPoRdxDNLTOal1peomAJ5hSd1c+
	/G38dKYdrREPqLaPo1+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipLzU-0004Yp-72; Thu, 09 Jan 2020 00:48:00 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipLzH-0004QJ-Ef
 for kexec@lists.infradead.org; Thu, 09 Jan 2020 00:47:56 +0000
Received: by mail-pl1-x644.google.com with SMTP id p9so1806535plk.9
 for <kexec@lists.infradead.org>; Wed, 08 Jan 2020 16:47:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=rSfEEcmQyCUqfvgCiTT6mkGa4l0lidjR/v02Uy320aQ=;
 b=vlXw4X09XtxJmnvAJpjDx+iHGbAhzR8xoLQkJQBDx0HyHh04Cy/pvVg8AWPKiH1i14
 JHUj3TzmajSF4cRTHkQYxyNL/bJU+Wmt+CkIcjZiAotEGEGxmT/03D46hSWJEcxHvnSw
 auKTtM5a4oXh6YD+9rqg8h8jMFhhRuaDVBNNfaTnLxiG3XxV81N/+YbeJ6E68PnVlbmV
 EeMn4TWWovHmHBASdO480YbZIuMh/BaswVryM/GELCxzf5O/2ieWsLn0ZemGdaWy7dHg
 Ac1rxyw1VvR/+AV3gGkGBx+4XWGXQm3B7rHRCAtaiLGKIu9xyAMHJeMh72SlPrB5WnVM
 zfhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=rSfEEcmQyCUqfvgCiTT6mkGa4l0lidjR/v02Uy320aQ=;
 b=STkdGmECaZtZPcP9rCrkxXQtq6gk3cMqzdAaa1FCUdaaQf+JdK9fx0fWSmhW5vrTHp
 WQH7NJmVBy1CqD26K2quf1HcMc2fKJdo4mGeUneAldmLVYRc2rFF3URjSYRyJur7BVxS
 70xeKLwbo9VrpOEVxPIajbGQ+EJgKpeQocCNJ6lFajQwP19TPHSUwryUFMMgdYNvdfbB
 09JHhnN8XnfK+kgf/D+zKDB9TPQEs/KTC/t/iMJ1egDoACmfzIQTxN9TL07f+4jm4ss7
 +8Tx1r9BcBJ00MbTtwpXz8j1cPXodIxM8+YHXfRMsxK0gqmuobYhD2CZi2eE3NNdJpjN
 RdvA==
X-Gm-Message-State: APjAAAU/KcrdWfPH4rin6pr1b/u0TtLQ6p41lyKkoANSru0a6zInxAF8
 ToanUny+Hg8ZZSLiWxNzDH0QnQ==
X-Google-Smtp-Source: APXvYqw7WGHnX/QpyTD8r1wwlNVnsgyvHRNaXQv42JH5+fdbom1in8GXTZi8DnCxNlaJBf7Bd6EUMQ==
X-Received: by 2002:a17:902:9a08:: with SMTP id
 v8mr8665290plp.134.1578530865394; 
 Wed, 08 Jan 2020 16:47:45 -0800 (PST)
Received: from linaro.org ([121.95.100.191])
 by smtp.googlemail.com with ESMTPSA id b8sm5099312pfr.64.2020.01.08.16.47.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 Jan 2020 16:47:44 -0800 (PST)
Date: Thu, 9 Jan 2020 09:46:55 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 2/2] arm64: kexec_file: add crash dump support
Message-ID: <20200109004654.GA28530@linaro.org>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
 Will Deacon <will@kernel.org>, pasha.tatashin@soleen.com,
 catalin.marinas@arm.com, will.deacon@arm.com, robh+dt@kernel.org,
 frowand.list@gmail.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 james.morse@arm.com, linux-arm-kernel@lists.infradead.org
References: <20191216021247.24950-1-takahiro.akashi@linaro.org>
 <20191216021247.24950-3-takahiro.akashi@linaro.org>
 <20200108174839.GB21242@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108174839.GB21242@willie-the-truck>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_164747_501127_8AC489B3 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: pasha.tatashin@soleen.com, catalin.marinas@arm.com, bhsharma@redhat.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 james.morse@arm.com, frowand.list@gmail.com, kexec@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 05:48:39PM +0000, Will Deacon wrote:
> On Mon, Dec 16, 2019 at 11:12:47AM +0900, AKASHI Takahiro wrote:
> > Enabling crash dump (kdump) includes
> > * prepare contents of ELF header of a core dump file, /proc/vmcore,
> >   using crash_prepare_elf64_headers(), and
> > * add two device tree properties, "linux,usable-memory-range" and
> >   "linux,elfcorehdr", which represent respectively a memory range
> >   to be used by crash dump kernel and the header's location
> > 
> > Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will.deacon@arm.com>
> > Reviewed-by: James Morse <james.morse@arm.com>
> > Tested-and-reviewed-by: Bhupesh Sharma <bhsharma@redhat.com>
> > ---
> >  arch/arm64/include/asm/kexec.h         |   4 +
> >  arch/arm64/kernel/kexec_image.c        |   4 -
> >  arch/arm64/kernel/machine_kexec_file.c | 106 ++++++++++++++++++++++++-
> >  3 files changed, 106 insertions(+), 8 deletions(-)
> > 
> > diff --git a/arch/arm64/include/asm/kexec.h b/arch/arm64/include/asm/kexec.h
> > index 12a561a54128..d24b527e8c00 100644
> > --- a/arch/arm64/include/asm/kexec.h
> > +++ b/arch/arm64/include/asm/kexec.h
> > @@ -96,6 +96,10 @@ static inline void crash_post_resume(void) {}
> >  struct kimage_arch {
> >  	void *dtb;
> >  	unsigned long dtb_mem;
> > +	/* Core ELF header buffer */
> > +	void *elf_headers;
> > +	unsigned long elf_headers_mem;
> > +	unsigned long elf_headers_sz;
> >  };
> 
> This conflicts with the cleanup work from Pavel. Please can you check my
> resolution? [1]

I don't know why we need to change a type of dtb_mem,
otherwise it looks good.

(I also assume that you notice that kimage_arch is of no use for kexec.)

Thank you for the merge,
-Takahiro Akashi


> Will
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/diff/?h=for-kernelci&id=aef73191765a88cadc0a627cdc070e5a0086b015
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
