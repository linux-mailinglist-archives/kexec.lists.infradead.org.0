Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C9E1A477C
	for <lists+kexec@lfdr.de>; Fri, 10 Apr 2020 16:34:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oJQcS4+X/HfXg7yTvlEs/buy25gV/S08V9AtjrxWF8g=; b=Zw2XdcndRRqIQK
	gfWKTh1gw6/3rmJAygsPhllDzPSwcUdy64/N1l6Z7DM8U1lEECnxkwDyrilXWF32vpjx3d4qWGanT
	o9PlC0idPoOMpWPO2Vg2tsr9nR5lWYymCpXW+wx4DOaC4gaZIEqZCBljNQ7glgQv+/Rb7Q4MGrkAw
	OOyM8V/1mdgHI5on/fYiPndLm3GEsmFCilk5a+XqEX3zaLhLzQU2gvKwFWsgCb06orM17D2PKrSW6
	sQJTPCR/J9rs9dfSMwcv2HA0L7dMmi0BvI9wXER2+W08i3FQGzz6QdiEln/o0cREyEduRhgEXKF0g
	p0zzokqnoAZJZzbUDaZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMujU-0003RD-Mw; Fri, 10 Apr 2020 14:34:12 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMujR-0003QS-Dj
 for kexec@lists.infradead.org; Fri, 10 Apr 2020 14:34:11 +0000
Received: from zn.tnic (p200300EC2F0CB700FCB27CAA9217AC57.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0c:b700:fcb2:7caa:9217:ac57])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 41CF21EC0CE0;
 Fri, 10 Apr 2020 16:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1586529240;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=pAL0TBvXuX49d8+80p+PRJuaLeJMlvRmSNuFeMYFYDY=;
 b=PztOC/gFR4jFBAQhlRbHiVy83/8LEDbo08gaTBKXpfOyZFWQLTSpOIUc9Tg7HefNSlvcOb
 cR1XoQbCe1Yd7rXTkfGuG54+TP6V5gA3EwRJlRyPqVWrAypIyTqVtwKR4DWP4EEhdYhVUA
 P7/a8Tm8TfT8KmH8DHiWrEHPI1ajtmY=
Date: Fri, 10 Apr 2020 16:33:58 +0200
From: Borislav Petkov <bp@alien8.de>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] efi/x86: Revert struct layout change to fix kexec boot
 regression
Message-ID: <20200410143313.GB8205@zn.tnic>
References: <20200410074320.16589-1-ardb@kernel.org>
 <20200410135644.GB6772@dhcp-128-65.nay.redhat.com>
 <20200410140151.GC6772@dhcp-128-65.nay.redhat.com>
 <CAMj1kXEM13Y5FCh8GvJGTueen3fa0u_JX66j0X10KPf4Z0c4Jg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXEM13Y5FCh8GvJGTueen3fa0u_JX66j0X10KPf4Z0c4Jg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_073409_611713_C182F838 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 X86 ML <x86@kernel.org>, kexec@lists.infradead.org,
 Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 04:22:49PM +0200, Ard Biesheuvel wrote:
> > BTW, a fixes tag is good to have..
> 
> I usually omit those for patches that fix bugs that were introduced in
> the current cycle.

A valid use case for having the Fixes: tag anyway are the backporting
kernels gangs which might pick up the first patch for whatever reason
and would probably be thankful if they find the second one, i.e., the
fix for the first one, through grepping or other, automated means.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
