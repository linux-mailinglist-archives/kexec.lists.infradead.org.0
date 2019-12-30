Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB60112D460
	for <lists+kexec@lfdr.de>; Mon, 30 Dec 2019 21:16:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6bycaiN7k3NY8Uh/E/2ZVoZr9noKUxjQDB1lAKsaeTM=; b=c6PFZDbtbntQPG
	iOUGGu1xfvHtAABWvOcplzTUoq1WfNWCyFjz9azgy170lEvMgE9GJ15tUluhcgxz0Sa9+s6C3X9n2
	/u+51zJqbBanlBElcRhx0Dt1SJZ5nQNnAOzwRS5iexPacQ5g9w5mF45+jx7aDJQckFFvyzeJAOmtZ
	R5lbxn5LImDsAwSLsOFImIeoyhYDGXVsiD1Tu+8nORvuCYNT/GRKJm1jpMDBnq3JqzEmGs1n2fNco
	xwXqLM3UJLda3zxGVApCzjAhTR2V+Qz/AiqRg2WIao+tcDxrBZznQDMNXw9QfLL2FdhGnbq3Fxfxk
	b37EuMivbAvLzi+YCgMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im1TC-0007Rt-Gx; Mon, 30 Dec 2019 20:16:54 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im1T9-0007RY-5I
 for kexec@lists.infradead.org; Mon, 30 Dec 2019 20:16:52 +0000
Received: by mail-oi1-x243.google.com with SMTP id p125so9271627oif.10
 for <kexec@lists.infradead.org>; Mon, 30 Dec 2019 12:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vGoYHJkV2sBuC/EabEMn2jT6G42n0LQcEtNTThbzJvo=;
 b=LOFA+mxlmd5oV8l+Ly2ITiGE7quCUFquXLsCfnDW9MllcsxJM+xgnpfdFKisb8BlW1
 GsO5VONykMGvsC/iRi6Eid6vExDoXX/AGXk3RgaQSaV/KJstjudxFNuYhLaX/O/sRVgI
 fCl75NApfe3sM2ibIn7p9xCxDkpU9lBZeIiHUmzhr+s8RGLjZMMlrnEOtoVPjzn7bz+8
 qAXlEZ4WIdspGkErzVHHtXGP+qBfG7Ig0sNFiB5LEExIhOb0uo+rkIgNuo/eDxEcTcVA
 mHuU2UpXe/KNqH19ffb+XBrtbUJmugSY6caSLnbRawTieig0KcwDS3330Y27EYSFO6nG
 GO5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vGoYHJkV2sBuC/EabEMn2jT6G42n0LQcEtNTThbzJvo=;
 b=qY+wp47cDS60r61y5Zam31W9kS+PRGRmzMzgcAW0W7Mk5WeLW1qOPhQ8zJh3XL8ve2
 OZVRHD2GRFd9L138PoVOhicjhk5fztys2n7J5HD4+TG4x0yRAZSjgjCmTUvsGPCywwL5
 NTuKzJn9yFNzGsY4NNHt7js5+Wx3bYy0YRyQ7rTcRvU54mXbUC5DPq8jl2AtS/vALbwZ
 aNGWf4/YBV6Z6sTxJmHKM3O/Zz7cA/UYk5rDRFGgADL/VSh5TInAHM3/ukoIZmvz7Fbz
 Hf5N+8ZijB6vMx5N4YSzykaHWyc1trwEv6WIyc9Rghchn9iORhUbrQZa0Ha1c0vFFprF
 QRbw==
X-Gm-Message-State: APjAAAUBFJWCd+FaSGp9BMHzt97EOXRb7sbDmUd1nctrRNe47D8QC8Nl
 hC3f3lW4GCKcT3MXq1gBdWjm3fe1/ax9GYHuPz6Tfg==
X-Google-Smtp-Source: APXvYqx3ceamtmJUChp1TLuDkDv4af0iLI+bwyDSS+upKsqsk+U0Ob0XHRDXqZ29dmIwB0CA1zn0kxN2oJlTNMRltC0=
X-Received: by 2002:aca:3f54:: with SMTP id m81mr333228oia.73.1577737010159;
 Mon, 30 Dec 2019 12:16:50 -0800 (PST)
MIME-Version: 1.0
References: <20191204075233.GA10520@dhcp-128-65.nay.redhat.com>
 <CANTgghnsdijH90qnm24qat70T7FA5qOwmnXXt+NYVxHYa4SLJA@mail.gmail.com>
 <CAPcyv4iRdJO6xrCaN=vrSvYFLZanLazmJLArT5YMfdJ6rc-PEQ@mail.gmail.com>
 <CAPcyv4hT9HXN2CqZw96zqgdNaapc=9oqSYvGrnEbeqSmx0t5xw@mail.gmail.com>
In-Reply-To: <CAPcyv4hT9HXN2CqZw96zqgdNaapc=9oqSYvGrnEbeqSmx0t5xw@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 30 Dec 2019 12:16:39 -0800
Message-ID: <CAPcyv4jLxqPaB22Ao9oV31Gm=b0+Phty+Uz33Snex4QchOUb0Q@mail.gmail.com>
Subject: Re: [PATCH] x86/efi: update e820 about reserved EFI boot services
 data to fix kexec breakage
To: Dan Williams <dan.j.williams.korg@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_121651_247083_416323DC 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>,
 linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, X86 ML <x86@kernel.org>,
 kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 "Eric W. Biederman" <ebiederm@xmission.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Dec 30, 2019 at 1:42 AM Dan Williams <dan.j.williams@intel.com> wrote:
[..]
> I'll send a patch to fix up efi_fake_memmap().

For others following this thread, that patch is here:

http://lore.kernel.org/r/157773590338.4153451.5898675419563883883.stgit@dwillia2-desk3.amr.corp.intel.com

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
