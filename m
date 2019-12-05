Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 418B9113DEE
	for <lists+kexec@lfdr.de>; Thu,  5 Dec 2019 10:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BaiBNxTc2dP7SJ+yOfXkP2p8ExarRwIEPdNCprgiud0=; b=r15tawF842qeZu
	5GsYbNZpq9K/LJclWZn0YIvhQ163m1YulZQqFP3e/gnRVaIOiwkp0URAgom9PNlqzFdg+rlBVA9AC
	qL5HcM83SheK6BtaHx4ykV5rtdzDZScrICzBiavJrRFkt+Q9Xa07psNPtBfwiKh4Gm8/eshulTtOW
	Wg9Ov86qMh7zEJYH8dl+ll0UJ5df+vBUJHGlRhCMa/rRReCiyKkRelsUl4GBWOS67GBSvhOzAgOLO
	AQxkBNANJdoSy3J02jdVIYhwcOxh7ETo0eHWVpLB1SL7CjWifP6APzO9+q2fyln24kUcKbc+KMFtj
	uIXB890XOXl5qExg8pLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnR9-0006NT-QA; Thu, 05 Dec 2019 09:28:39 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnR4-0006My-Pj
 for kexec@lists.infradead.org; Thu, 05 Dec 2019 09:28:38 +0000
Received: by mail-wm1-x344.google.com with SMTP id g206so2826904wme.1
 for <kexec@lists.infradead.org>; Thu, 05 Dec 2019 01:28:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=r2SNB3l19ozRDzHNGQD+HCGVJCYcshprqr+6bK6lq4Y=;
 b=vKLV4WmFBt862M5lqvg3dMm3zH/ZV2vtcnk0l9au5fmUB5PO0Uf0xoOD1+fo9uvmvK
 CIWZ2X5OP4KXfwIni59ZZaGKIGn7pBlttdB09oPWdZWxmHVQF2q/7USsT6XKNLENg+tc
 GSerzVyuVQKycn8mtKlLKxNBXdEFzJjNrdfQrFV03pr7HLEC5yGod+JCxjgcvBWldxHL
 NRW6HcnNCA59J7Q9eefRkrurMQqr6osX8LUtZrZLaRYi7e0p13tfAv2TjjLrC8WiZJwQ
 BxPlo1Az1u12+cfyCVW6ObB+2047pCTP+Okxb56spJxm0jU6jWL5mrKz4lt86loloIWY
 ++2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=r2SNB3l19ozRDzHNGQD+HCGVJCYcshprqr+6bK6lq4Y=;
 b=EwW4vWrPANdApJeaIUsq5wSBOE43x95jNIq2t3bfra2ku1AX3hqlfQDD61i+Jt7psh
 6dl26VEY+i1+8HwKgJ3iq6pKusuerI8ZhiP8Vce4/9tl5XMGMLN4hrAkAysdMxS1elL6
 Fw4xEU8DfyWT5VagJsS6nHv/uKqXb874yoIa5PScfKYuVeVP+pPiqmjI0YFkxz8vW3oE
 qasnBKhVI/9G/iSOidRIgrebPgtkKIB/nnO6GhwnST/L0/Or80bzyVxz0MVZXIch37DN
 LD3EAkJgoAs+bmSkkgFOSrbVz6vHG5Pu5aamhoCOsiaGEikxU/IUZc9pkvfkb3sUoWyH
 oUUA==
X-Gm-Message-State: APjAAAXGBf/BP1KqrOpOklUJPOnaWrhSBEv9JD3+zw9oznekUGE2ycOZ
 ycRLIsEI0xG6W7XDTwDLfPaKYCrQZoD40diXlDzqdQ==
X-Google-Smtp-Source: APXvYqyGFuPgx5/Vf1TDlqbpy8l+PU91mXIP8Q6Yx96k9y/h7397xdAVP2YG1BdZjxMHNQaC6hIoee3BwvSl+QqhnJs=
X-Received: by 2002:a1c:7205:: with SMTP id n5mr4202075wmc.9.1575538113040;
 Thu, 05 Dec 2019 01:28:33 -0800 (PST)
MIME-Version: 1.0
References: <20191204145233.11962-1-ardb@kernel.org>
 <20191204171744.o3ijdspnelqn5fgd@gabell>
 <08f05b18-12b2-0ba4-b819-b95ba27d1862@arm.com>
 <20191204185708.hdoa5gzmfr547q53@gabell>
 <CAFTCetTTgJRN+3+vqS+XbMMrra3xKqrEXzqEKpLsMn=G8peUjw@mail.gmail.com>
In-Reply-To: <CAFTCetTTgJRN+3+vqS+XbMMrra3xKqrEXzqEKpLsMn=G8peUjw@mail.gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Thu, 5 Dec 2019 09:28:29 +0000
Message-ID: <CAKv+Gu8tOho+5DDQ-N4vkgLENEsLzgmNO9A+Vgf_G2sSCRuNNQ@mail.gmail.com>
Subject: Re: [PATCH] efi/memreserve: register reservations as 'reserved' in
 /proc/iomem
To: Bhupesh SHARMA <bhupesh.linux@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_012835_035580_01BCB792 
X-CRM114-Status: GOOD (  27.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 linux-efi <linux-efi@vger.kernel.org>, Bhupesh Sharma <bhsharma@redhat.com>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Ard Biesheuvel <ardb@kernel.org>, Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>, Masayoshi Mizuma <msys.mizuma@gmail.com>,
 d.hatayama@fujitsu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, 4 Dec 2019 at 20:13, Bhupesh SHARMA <bhupesh.linux@gmail.com> wrote:
>
> Hello Masa,
>
> (+Cc Simon)
>
> On Thu, Dec 5, 2019 at 12:27 AM Masayoshi Mizuma <msys.mizuma@gmail.com> wrote:
> >
> > On Wed, Dec 04, 2019 at 06:17:59PM +0000, James Morse wrote:
> > > Hi Masa,
> > >
> > > On 04/12/2019 17:17, Masayoshi Mizuma wrote:
> > > > Thank you for sending the patch, but unfortunately it doesn't work for the issue...
> > > >
> > > > After applied your patch, the LPI tables are marked as reserved in
> > > > /proc/iomem like as:
> > > >
> > > > 80300000-a1fdffff : System RAM
> > > >   80480000-8134ffff : Kernel code
> > > >   81350000-817bffff : reserved
> > > >   817c0000-82acffff : Kernel data
> > > >   830f0000-830fffff : reserved # Property table
> > > >   83480000-83480fff : reserved # Pending table
> > > >   83490000-8349ffff : reserved # Pending table
> > > >
> > > > However, kexec tries to allocate memory from System RAM, it doesn't care
> > > > the reserved in System RAM.
> > >
> > > > I'm not sure why kexec doesn't care the reserved in System RAM, however,
> > >
> > > Hmm, we added these to fix a problem with the UEFI memory map, and more recently ACPI
> > > tables being overwritten by kexec.
> > >
> > > Which version of kexec-tools are you using? Could you try:
> > > https://git.linaro.org/people/takahiro.akashi/kexec-tools.git/commit/?h=arm64/resv_mem
> >
> > Thanks a lot! It worked and the issue is gone with Ard's patch and
> > the linaro kexec (arm64/resv_mem branch).
> >
> > Ard, please feel free to add:
> >
> >         Tested-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
>
> Same results at my side, so:
> Tested-and-Reviewed-by: Bhipesh Sharma <bhsharma@redhat.com>
>

Thank you all. I'll get this queued as a fix with cc:stable for v5.4


> > >
> > > > if the kexec behaivor is right, the LPI tables should not belong to
> > > > System RAM.
> > >
> > > > Like as:
> > > >
> > > > 80300000-830effff : System RAM
> > > >   80480000-8134ffff : Kernel code
> > > >   81350000-817bffff : reserved
> > > >   817c0000-82acffff : Kernel data
> > > > 830f0000-830fffff : reserved # Property table
> > > > 83480000-83480fff : reserved # Pending table
> > > > 83490000-8349ffff : reserved # Pending table
> > > > 834a0000-a1fdffff : System RAM
> > > >
> > > > I don't have ideas to separete LPI tables from System RAM... so I tried
> > > > to add a new file to inform the LPI tables to userspace.
> > >
> > > This is how 'nomap' memory appears, we carve it out of System RAM. A side effect of this
> > > is kdump can't touch it, as you've told it this isn't memory.
> > >
> > > As these tables are memory, mapped by the linear map, I think Ard's patch is the right
> > > thing to do ... I suspect your kexec-tools doesn't have those patches from Akashi to make
> > > it honour all second level entries.
> >
> > I used the kexec on the top of master branch:
> > git://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git
> >
> > Should we use the linaro kexec for aarch64 machine?
> > Or will the arm64/resv_mem branch be merged to the kexec on
> > git.kernel.org...?
>
> Glad that Ard's patch fixes the issue for you.
> Regarding Akashi's patch, I think it was sent to upstream kexec-tools
> some time ago (see [0}) but  seems not integrated in upstream
> kexec-tools (now I noticed my Tested-by email for the same got bounced
> off due to some gmail msmtp setting issues at my end - sorry for
> that). I have added Simon in Cc list.
>
> Hi Simon,
>
> Can you please help pick [0] in upstream kexec-tools with Tested-by
> from Masa and myself? Thanks a lot for your help.
>
> [0]. http://lists.infradead.org/pipermail/kexec/2019-January/022201.html
>
> Thanks,
> Bhupesh

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
