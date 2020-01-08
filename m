Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE381349F8
	for <lists+kexec@lfdr.de>; Wed,  8 Jan 2020 18:59:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yra2LhHfGCaQh7iO9QPn/wLsxaWkE+yAtxSKl0CQyK8=; b=nryKiUFIHfQL+v
	4niDQR5VVzDr22IpHPYZh3dkmlX+VG3zJIeETejkshM0Nw/U9xnLlQmUHei4bVIPJwqv8kSkIzy3q
	pA3evv7Da4OYF96DzWsQsYGiQFDexbWj7QDb+ypY0vbddyKiokTSeDievihD418yDa8fouNemRAft
	lNBFm1VmR7af3OWzisEUxMzU3dtLgoNmqJb8uQRIKzD72zjjOi+0TCGi1l1hdBGPNYCadgQhfGViQ
	xPzv4+Buy0SqVo+0i4LFV/s9UdR1UllAPry5jGERTCkmlqTYQty1p5c7RaDZzXXPWfWGO2ZYQ5EsU
	ZA0r5Ve8KH9p+CUgD7jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFcZ-0004lB-Ic; Wed, 08 Jan 2020 17:59:55 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFcJ-0004W4-SM
 for kexec@lists.infradead.org; Wed, 08 Jan 2020 17:59:42 +0000
Received: by mail-ed1-x543.google.com with SMTP id e10so3303839edv.9
 for <kexec@lists.infradead.org>; Wed, 08 Jan 2020 09:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=NYI9BdokG2IbKyPM2CZW5USlC6MewEmU/EsguFiov3s=;
 b=hruQrdLyR9/6799NqXMaIG2kcPTB33SpTMDmQYiE6vp6kHoBE5stgW1MaZKyjvZEHS
 9pyrvpkV+NQv/kkb8q5nTz1tTLWuuT1OgqWGMyCl4SrNwKg/Vmk9/2G+WNkwGgezngDA
 FYKlRdEN8J3h19TIKwynRppUNImOq+Xhfr3fGTJ6sArPvEm4gpxNjaYPxhftTMoienYA
 2nOYAZHd7I0S2gi9MDvpYHkqCYX3dor6aiynnAumkuiKYfaz570phRxWWrlZ0pKSAcpm
 +DQBUyvQHCVPMUWbYH+7XD0ec/9hm9xW7UVxT/sAZIIw8Rb3pnK4QfV3hYqG7QqRiLen
 xJeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=NYI9BdokG2IbKyPM2CZW5USlC6MewEmU/EsguFiov3s=;
 b=ieBRcLQ/cJZBaEdskP3o24AtkkOk79JCGS1v2vM6lVZ+tAKsNyVmzpcPaDwT/0Sicq
 UHB+imJs20uhPX3J0hmo6QEDMaPG+KOy7TscYWx0RZsbb/SyAUf0Mxu737ppfGAMao2t
 XDoIXDEwJMpMSNheCZcGgglLKDpt6+dzK166YhhNz1VzgFzxa/vNCH7vzI59uhJVIjC/
 XS57kDZzAcyOE/i9cHff1rCn7kV5xTbMgy4Cq8lTAtI2Po53J+vXAZN3Wk1b09y2UcBg
 KXhlwCQJgGUY8y3MkXiNXOUC+IlJH23PkhkPDm4YnJ3OGGYudjfr8LWJV9DXROzmJ2uX
 kmNw==
X-Gm-Message-State: APjAAAUWiecusiUuJPBtDPgLXv8M34Oty1Bc4DmT8fiJyjD1BDmRBDvc
 u+0OM13QCIv5rpaubYo6AwQrXayimVRRjqUtc8ehCA==
X-Google-Smtp-Source: APXvYqy0z28/dzBrNsd91I0p0ovtGg4Owrd9cilLSqMFv+lDXxI4gLLHOwdGWBi7vzbaJVrwcuwcObUtdOg6AO/wMiw=
X-Received: by 2002:a17:906:4d43:: with SMTP id
 b3mr6268026ejv.109.1578506378310; 
 Wed, 08 Jan 2020 09:59:38 -0800 (PST)
MIME-Version: 1.0
References: <20191204155938.2279686-1-pasha.tatashin@soleen.com>
 <20200108173225.GA21242@willie-the-truck>
In-Reply-To: <20200108173225.GA21242@willie-the-truck>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 8 Jan 2020 12:59:27 -0500
Message-ID: <CA+CK2bBDhF4YuFOeagzZ48-BigDmOVuBKZTAC8fd6tojcJN-0g@mail.gmail.com>
Subject: Re: [PATCH v8 00/25] arm64: MMU enabled kexec relocation
To: Will Deacon <will@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_095939_916643_7B23A403 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, steve.capper@arm.com,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, rfontana@redhat.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jan 8, 2020 at 12:32 PM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Dec 04, 2019 at 10:59:13AM -0500, Pavel Tatashin wrote:
> > Many changes compared to version 6, so I decided to send it out now.
> > James Morse raised an important issue to which I do not have a solution
> > yet. But would like to discuss it.
>
> Thanks. In the meantime, I've queued the first 10 patches of the series
> since they look like sensible cleanup, they've been reviewed and it saves
> you from having to repost them when you make changes to the later stuff.

Great, thank you!

Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
