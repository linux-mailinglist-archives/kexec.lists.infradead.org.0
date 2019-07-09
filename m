Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A5862CE7
	for <lists+kexec@lfdr.de>; Tue,  9 Jul 2019 02:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRHqIT50dTnkZ7RgyZnhsFAj8mLuMr8zgP4U/8ntRQs=; b=s2SXM+tN06W8fH
	x2UYethczyUMehEmFmHDRMyk8bNBzCDxifzNt5MWpKxFQQHtcDEgBHX51ezEXf7uZ+cUIXRa9FwHq
	9UjxvB7CNQp676KUyN4dB4CYs7787p+qrjl5hejFRvJ1rJOkKilT+9X5NMYwn6mPE6kbZ0VNnEJgY
	JSXtAa9yN0nW78JwW/1dXlf0K2SZ05vDVYB/SysezDMMOy4UyDEAkmV3xE09dERCP/W2ujPxuiwOz
	d2sOzcyV4eOdFQYg3ewtrqMcSILxST1jokYUUL9Xc3UxKTBlu7eVFVMZaCQMQ/V2jfMRP7Lo6CaXP
	OczIFbhB2c89lQPC5UKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkdhF-0001VD-75; Tue, 09 Jul 2019 00:09:25 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkdh8-0001U6-Dj
 for kexec@lists.infradead.org; Tue, 09 Jul 2019 00:09:20 +0000
Received: by mail-ed1-x541.google.com with SMTP id w13so16082209eds.4
 for <kexec@lists.infradead.org>; Mon, 08 Jul 2019 17:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=98rToMWmhy/jqHktBRjZkc7KbW9VRwSYkaJRbC3br4I=;
 b=i3oe6W0BGcSkTepcfGEJAhzFh8lQOwvniDzY3lf8xxhn8MfBi54r7Fl2n2nGdZvlrv
 7qtP66giWRCRfgSjdETIbISxBkBjHk349VzwNpp/XUSzNBj2A4jXAiMANZzOUckZ3zsy
 GZCrXZ4v9OgdNrrN316v6BDBm1BJmbH4r/ZIXLqHFYfLRWALRxuNxJYNFhA9oLquz8Sq
 NBAeaau88Q7EXNC0lm/sm5RyVSXsNXKR6Zxnb9akp6QytAnKknq+Tmi5c0hVCRIb8prp
 RPVziOWqDM+agE/TcfMw0rzPWiH28hw1sqnvRf/EiFr1TJQ3LYqFuANfxTtWwFTIEXSQ
 QoYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=98rToMWmhy/jqHktBRjZkc7KbW9VRwSYkaJRbC3br4I=;
 b=UQtnXYrcfLdqputdW4Xjutzv4LpC7mQXSr9wUgmub5ridRdo9JToeLwpSMTjm6I2RT
 r/ekgbD8YfAbYWelFCiJdF1CJMa9ruda4jkQhLhvUQgprR4tRWyk1Fibf0Cz0XJekaCx
 dKTAhcXFDkBKov5wGSYpC0fv+QvsLER5nNO97kRKGvn2uE6xgEeb6quHPPotNQ6/wtmj
 U5YLO70Yg+Yy8SIJkdp3TEf8UMsOMCrlQCjWtSAQyV7EXxnz9qasyVumpbtX5+ZOmkob
 8hC7nB0CV7ZRGNiT3PxixTgXnVhYzqrzGNoeE0bQc43fzGHoo/ddZRkXllVHa83iB3DW
 LjgA==
X-Gm-Message-State: APjAAAVft+tb4fAp9aUhA0w+pEpAdpRGLVh5c8RaVIMsEQMibO1Dhujc
 kjUTrWHaDwWzS7jFip1GSNiXKXmoL2upmQaLfyTu9g==
X-Google-Smtp-Source: APXvYqwU07Zh/QKPE/nEPDgFLpdMlrr6cwb9a/ibICEkDuXQ69QLQF/9cX8my8Dhn7VceVLo/ycOsWAviGk5vIhAkmk=
X-Received: by 2002:a17:906:7c8d:: with SMTP id
 w13mr18501893ejo.264.1562630955016; 
 Mon, 08 Jul 2019 17:09:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190708211528.12392-1-pasha.tatashin@soleen.com>
 <87sgrgjd6i.fsf@xmission.com>
In-Reply-To: <87sgrgjd6i.fsf@xmission.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 8 Jul 2019 20:09:04 -0400
Message-ID: <CA+CK2bAOPkN=qEdE38R0FRnrzRK0EqLid7eUVnTj1acmaFHY_w@mail.gmail.com>
Subject: Re: [v1 0/5] allow to reserve memory for normal kexec kernel
To: "Eric W. Biederman" <ebiederm@xmission.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_170918_625485_D23C6C43 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Sasha Levin <sashal@kernel.org>, corbet@lwn.net,
 Catalin Marinas <catalin.marinas@arm.com>, linux-doc@vger.kernel.org,
 kexec@lists.infradead.org, James Morris <jmorris@namei.org>,
 LKML <linux-kernel@vger.kernel.org>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> Something is very very wrong there.
>
> Last I measured memory bandwidth seriously I could touch a Gigabyte per
> second easily, and that was nearly 20 years ago.  Did you manage to
> disable caching or have some particularly slow code that does the
> reolocations.
>
> There is a serious cost to reserving memory in that it is simply not
> available at other times.  For kexec on panic there is no other reliable
> way to get memory that won't be DMA'd to.

Hi Eric,

Thank you for your comments.

Indeed, but sometimes fast reboot is more important than the cost of
reserving 32M-64M of memory.

>
> We have options in this case and I would strongly encourage you to track
> down why that copy in relocation is so very slow.  I suspect a 4KiB page
> size is large enough that it can swamp pointer following costs.
>
> My back of the napkin math says even 20 years ago your copying costs
> should be only 0.037s.  The only machine I have ever tested on where
> the copy costs were noticable was my old 386.
>
> Maybe I am out to lunch here but a claim that your memory only runs
> at 100MiB/s (the speed of my spinning rust hard drive) is rather
> incredible.

I agree,  my measurement on this machine was 2,857MB/s. Perhaps when
MMU is disabled ARM64 also has caching disabled? The function that
loops through array of pages and relocates them to final destination
is this:

https://soleen.com/source/xref/linux/arch/arm64/kernel/relocate_kernel.S?r=d2912cb1#29

A comment before calling it:

205   /*
206   * cpu_soft_restart will shutdown the MMU, disable data caches, then
207   * transfer control to the reboot_code_buffer which contains a copy of
208   * the arm64_relocate_new_kernel routine.  arm64_relocate_new_kernel
209   * uses physical addressing to relocate the new image to its final
210   * position and transfers control to the image entry point when the
211   * relocation is complete.
212   * In kexec case, kimage->start points to purgatory assuming that
213   * kernel entry and dtb address are embedded in purgatory by
214   * userspace (kexec-tools).
215   * In kexec_file case, the kernel starts directly without purgatory.
216   */
https://soleen.com/source/xref/linux/arch/arm64/kernel/machine_kexec.c?r=d2912cb1#206

So, as I understand at least data caches are disabled, and MMU is
disabled, perhaps this is why this function is so incredibly slow?

Perhaps, there is a better way to fix this problem by keeping caches
enabled while still relocating? Any suggestions from Aarch64
developers?

Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
