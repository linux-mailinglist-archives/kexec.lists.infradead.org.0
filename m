Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1145F10DA67
	for <lists+kexec@lfdr.de>; Fri, 29 Nov 2019 21:06:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZhY/IJx+0k5+S7+MktYZe+Y7+Q/YNmztjuY8vv1OqJs=; b=tKMPM6inFGBnbf
	rssVGSft7y+CB+5kyeu26zJBnXQ6lOpjSKT9ZNCOi78slE5ArWV/G6hPzxkndoDIvPmG6LudiaExV
	94a1sCExICMX3ebsEd3CmeBArI29CH4gqHYBgxkG1cfHqtyYECI5bTSviLONrA5hUqGZqg4qIhhcY
	TESc7PavbaJ344aVpmqRWIrJ0TknJTiZjCYwWoC/4z5YkVwaelqmATLFsRzXm0uC8EfoWSJBESJoh
	G7BQbmA3/vzAIOoR2XWpLNhWRU9Q59bWHVkcI+DNNX8pMepYOmHDLdDa9dGf7bKvjvhOHid1BonDT
	3lSziBhNMa6QPaByRHQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iamWf-0003g0-Hi; Fri, 29 Nov 2019 20:06:01 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iamWZ-0003eu-23
 for kexec@lists.infradead.org; Fri, 29 Nov 2019 20:06:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575057953;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RP2PHwp5wZl3ztgeJTb35J2c98KyKZ9pDDlofVv46EI=;
 b=hrUHVKWMIHROTUGhPXm+0v868zAudvzVEXurJaR8hifulObOGO+9qc+KjZkIE5ewHMg7p3
 usJEIHYqXDz4rf8yt3yzHBMiHSLk1XL/zskhK6NN3eMSjM5uPGq5BVB//B7sup8LVlVNh+
 Vdhq1aslXHmCjzECr9NT2GZ9x2gzbNQ=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-312-9lmXx3OyPKGI6y0POlpxXw-1; Fri, 29 Nov 2019 15:05:51 -0500
Received: by mail-lf1-f69.google.com with SMTP id i29so4436529lfc.18
 for <kexec@lists.infradead.org>; Fri, 29 Nov 2019 12:05:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zCyHxNb/EFCllk+iZMx0l93yQzrOq+uBxpToCPQHS9k=;
 b=U1Tk7sFGp/Sd/qctHJtBqWoUecUAW9XlOrpEEfS2pAX9C1yjy0j7TgFecR6CG/Ocnx
 qpEkvEJ50Q/fDXfTdWJH/Z4+iFJUEnflJfxcB7415MsTSv0O5qEEb76YDAALNojHJi7H
 RCD1SIrpmbWu5hHFWMh5CvBWZzR4SwEYZWShmINUVfvGR8dXq78ZRrjEbTHVzwpstDsb
 ubIqXp+HEKC3ZS8uHKMJy1vpknF4vtgVLJjMlSft1liIb6SO0enroCgk9+Q9qFlyw2pt
 PnA7qagThosEqZWfSKhaH0q6uazW7xzr/mEWpPvY/j+SdLOtYhxI8MA2dCrsQB5mZIP3
 a19g==
X-Gm-Message-State: APjAAAXKodWeGEPtdpEo0p4/5Dexfqi5wQrClSR3uMMJQpUFcH1j3h+T
 YnUEg6uWda8YP3/L5u4Ya1GeqEv9YlvGngxiTvQq8ZqPYxpUiEWnFsYvE5YeuItlPT2Html8Oeo
 jA96CDNwfOFkRdU+6EtfIjCze+HbOR/v88Tam
X-Received: by 2002:a2e:9a41:: with SMTP id k1mr12682035ljj.235.1575057949814; 
 Fri, 29 Nov 2019 12:05:49 -0800 (PST)
X-Google-Smtp-Source: APXvYqz0eILOnKMVbbahC3Rp/NyuV7+7BmZiagne10VkRMygf99/om+7iSrw3qCYWoCJXV2cv5Un/9KS0XCSQp5JswM=
X-Received: by 2002:a2e:9a41:: with SMTP id k1mr12682025ljj.235.1575057949585; 
 Fri, 29 Nov 2019 12:05:49 -0800 (PST)
MIME-Version: 1.0
References: <1574972621-25750-1-git-send-email-bhsharma@redhat.com>
 <20191129102421.GA28322@willie-the-truck>
In-Reply-To: <20191129102421.GA28322@willie-the-truck>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Sat, 30 Nov 2019 01:35:36 +0530
Message-ID: <CACi5LpNQPw41kGsW+d0PyZaC7gSrbgwT2VxwyO5r3j83h-mkEQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/5] Append new variables to vmcoreinfo (TCR_EL1.T1SZ
 for arm64 and MAX_PHYSMEM_BITS for all archs)
To: Will Deacon <will@kernel.org>
X-MC-Unique: 9lmXx3OyPKGI6y0POlpxXw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_120558_624373_02BA9672 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, x86@kernel.org,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Paul Mackerras <paulus@samba.org>, Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Boris Petkov <bp@alien8.de>, Dave Anderson <anderson@redhat.com>,
 Michael Ellerman <mpe@ellerman.id.au>, James Morse <james.morse@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Bhupesh SHARMA <bhupesh.linux@gmail.com>,
 linuxppc-dev@lists.ozlabs.org, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Steve Capper <steve.capper@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Will,

On Fri, Nov 29, 2019 at 3:54 PM Will Deacon <will@kernel.org> wrote:
>
> On Fri, Nov 29, 2019 at 01:53:36AM +0530, Bhupesh Sharma wrote:
> > Changes since v4:
> > ----------------
> > - v4 can be seen here:
> >   http://lists.infradead.org/pipermail/kexec/2019-November/023961.html
> > - Addressed comments from Dave and added patches for documenting
> >   new variables appended to vmcoreinfo documentation.
> > - Added testing report shared by Akashi for PATCH 2/5.
>
> Please can you fix your mail setup? The last two times you've sent this
> series it seems to get split into two threads, which is really hard to
> track in my inbox:
>
> First thread:
>
> https://lore.kernel.org/lkml/1574972621-25750-1-git-send-email-bhsharma@redhat.com/
>
> Second thread:
>
> https://lore.kernel.org/lkml/1574972716-25858-1-git-send-email-bhsharma@redhat.com/

There seems to be some issue with my server's msmtp settings. I have
tried resending the v5 (see
<http://lists.infradead.org/pipermail/linux-arm-kernel/2019-November/696833.html>).

I hope the threading is ok this time.

Thanks for your patience.

Regards,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
