Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 258B57C9D4
	for <lists+kexec@lfdr.de>; Wed, 31 Jul 2019 19:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLGQJTCoPOVJg8WP4X6kbjqut0lGbcSjaqSQvsL2qVk=; b=D4JaZPuzTWPuZz
	jkEPdzG0VPPWBnisLTns25J1Ja2erKMLo6E4YRXSVfsh0rBxd4zWjFEWSf3Sveqx9dYv1UxhHeE8l
	8mBAYeUu3u/jdS2CFReqLC7N1VSxznF2pUtQmtBiMuauAWyzurlnXeqOUgM4gc+FVt1a30dty/pPj
	dJsdeZHiGMKO6jWuj0JRqYJGd9UfKKW/ogSxOFH48s1GkuaHDNc2x1lW7f5s89Q2q1eAO1DBGPkpc
	J7NxfIm+XmBexT44b6rfQ0ItPv50Ja4pXHZ3kGhhz2HadcpRonMWX2dG+3Ra5FW4AP3R0YgosFOa2
	M7ExcCx4qzYMxRGIDR+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hss1e-0007F4-BW; Wed, 31 Jul 2019 17:04:30 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hss1V-00075s-9C
 for kexec@lists.infradead.org; Wed, 31 Jul 2019 17:04:22 +0000
Received: by mail-ed1-x543.google.com with SMTP id s49so31545305edb.1
 for <kexec@lists.infradead.org>; Wed, 31 Jul 2019 10:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w3v6TLclWYCTjAr1Tti2BDVXfhzMXBqkZT8bGQWpyYs=;
 b=aOi9HiQRPHO4FOr23H0QJg5L4BRnfgz+Y7QvXWhB/ngiIQaEGHpBRMnl1OxzoXIBD2
 k43GqRNVGXw98UkWEJOgJJ2uCTXIijl6XMElm2r6cO8ZxA6p+VeKe0q36fAAh9KHjGXh
 YSgHNRaRuPZ5vFNks3rQ7KnUpdHhj099KPD3D99ZDMOC90fiBIPstXZKeDLSEGq6tymT
 9ON4RFhkvi6jSB8/Oj5Xi0cdIYetxeUWiifFJKWczZ8hgQpqdsJUnl9/Uwx6rJkeFEJj
 58AJWNsYbe4cmO3e3vyV70t0uKsb/DXhqgr2SLW8GdW3LoqfK74WF1+J9TrqIxeltae+
 yGYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w3v6TLclWYCTjAr1Tti2BDVXfhzMXBqkZT8bGQWpyYs=;
 b=TrmtBmtEb/198cdzJH3MKl8RzEw03TMWh/yQzF/pzSI+9hUzIVzy0iFWF1AsGFImcz
 efqP+F1LGMBqMJ0ueYXlVn9RVA8VLRpT0PyKLlUXkKlQy36rwmO2TRekyJw7VzoMfdnI
 vMVOTPaELd3prkUpo1ZDgclDSV+5T0Kab5I69TwOui9QSVR0Zyh6w9Qh/77dZdQ4e4kE
 +78s7+GtenoPE/96VSTL/55ocNHY2mtAqTa2F8EXFefjwvO7il6iRjhizHHKr4hBCqmZ
 i3AyVH3sUbKxvXyne+jRovNWXjfJbtcmGcsu4gglbsQUHLfKFtFNZPTV0eDkX1Lq97t0
 RyQg==
X-Gm-Message-State: APjAAAWtwsG9J5y9LPg7HYOqZe/35MITRXjyDfFXidWl5sAT1KCLCdOF
 lYiCTivixjOBlm6K0mDp2BO7/zfudjmNaOnTE0A=
X-Google-Smtp-Source: APXvYqyW5t23CPvCpiYNBbUwB050BijLjhKoZGvCCP6vJyE4voxLk8m00zN6oc8wm1lTBdkVRCt4NjssIfYO0PsdD3Y=
X-Received: by 2002:a17:906:9447:: with SMTP id
 z7mr30023478ejx.165.1564592659700; 
 Wed, 31 Jul 2019 10:04:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190731153857.4045-1-pasha.tatashin@soleen.com>
 <20190731163258.GH39768@lakrids.cambridge.arm.com>
 <CA+CK2bAYUFBBGo-LHBK4UWRK1tpx3AZ4Z9NkDxiDK0UYEDozaQ@mail.gmail.com>
 <20190731165007.GJ39768@lakrids.cambridge.arm.com>
In-Reply-To: <20190731165007.GJ39768@lakrids.cambridge.arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 31 Jul 2019 13:04:08 -0400
Message-ID: <CA+CK2bBOSC0iYjq_A18DNaNCYskTTJJTkM4N-WAqssoxpxuNPg@mail.gmail.com>
Subject: Re: [RFC v2 0/8] arm64: MMU enabled kexec relocation
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_100421_330170_4CF994A3 
X-CRM114-Status: GOOD (  18.08  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, Vladimir Murzin <vladimir.murzin@arm.com>,
 Jonathan Corbet <corbet@lwn.net>, Marc Zyngier <marc.zyngier@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 James Morse <james.morse@arm.com>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, Jul 31, 2019 at 12:50 PM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Wed, Jul 31, 2019 at 12:40:51PM -0400, Pavel Tatashin wrote:
> > On Wed, Jul 31, 2019 at 12:33 PM Mark Rutland <mark.rutland@arm.com> wrote:
> > >
> > > Hi Pavel,
> > >
> > > Generally, the cover letter should state up-front what the goal is (or
> > > what problem you're trying to solve). It would be really helpful to have
> > > that so that we understand what you're trying to achieve, and why.
>
> [...]
>
> > > > Here is the current data from the real hardware:
> > > > (because of bug, I forced EL1 mode by setting el2_switch always to zero in
> > > > cpu_soft_restart()):
> > > >
> > > > For this experiment, the size of kernel plus initramfs is 25M. If initramfs
> > > > was larger, than the improvements would be even greater, as time spent in
> > > > relocation is proportional to the size of relocation.
> > > >
> > > > Previously:
> > > > kernel shutdown       0.022131328s
> > > > relocation    0.440510736s
> > > > kernel startup        0.294706768s
> > >
> > > In total this takes ~0.76s...
> > >
> > > >
> > > > Relocation was taking: 58.2% of reboot time
> > > >
> > > > Now:
> > > > kernel shutdown       0.032066576s
> > > > relocation    0.022158152s
> > > > kernel startup        0.296055880s
> > >
> > > ... and this takes ~0.35s
> > >
> > > So do we really need this complexity for a few blinks of an eye?
> >
> > Yes, we have an extremely tight reboot budget, 0.35s is not an acceptable waste.
>
> Could you please elaborate on your use-case?
>
> Understanfin what you're trying to achieve would help us to understand
> which solutions make sense.

An extremely high availability device with an update story utilizing
kexec functionality for a faster kernel update and also for being able
to preserve some state in memory without wasting the time of copying
it to and from a backing storage. We at Microsoft will be using a
fleet of these devices. The total reboot budget is less than half a
second, out of which 0.44s is currently spent in kexec relocation.

Pasha

>
> Thanks,
> Mark.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
