Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7F7113633
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 21:13:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ehNlK+ZKhmUxp6rmGAACu5Z7SGDdyNgW3kjBp6jPnW8=; b=bi3GTeiutY4agr
	xKNejfFRmhOOFvAgH84YCMa+/vfPFfhhxKgSS5jFOPKDSc9oDWnreL6gcZ0K//p7CX3z2AExaZkFL
	zkNH3jYFniQSfLgu3YEVVBAy7KLVh7MELHsFdIPiMF+yFQm5YAbrC3LBSXvUsIZeNNLqVNkbAr09W
	ogLQZH5yYSk0JtJ7uab4ZpSijX5dOeKAkPQTt/hxu7mpXQVt2ZyoiHpFASUvjHTUrGmfBDuKFZ9Qz
	p6FeK+0TiaofrXZksLNBsT02e/hstMbZWRtjjuGAl5THBCLHKkJ0xgNb7gjRcrwD2UAZL+b2bpOAg
	JF3CZ76AmQLOqBFsDPvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icb1t-0007hO-UW; Wed, 04 Dec 2019 20:13:45 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icb1q-0007g1-9x
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 20:13:44 +0000
Received: by mail-ot1-x344.google.com with SMTP id i15so432806oto.7
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 12:13:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nWf2HTlHvajnOuURdmbOCH1BsMPANlvcDtR+uHH1c/o=;
 b=LaJ7pai1S22jwtQBuUu+xJpLL2O5wIxvYPOa7kmofO1qrsqHIcia4UAZlCa4mD282A
 zFy+R97gPfUjQmj7mshqvs5A/Kcr65C4vI4Wbq6shDL2UFxBy+Bdw8dBDLK3QnikVACF
 zSbrkwHWsLm/lOyrKvgVmKx8As6hYzHFXxEmxXs6DMFWd3GHwI9DAT7DWh5msg6/I3Bu
 2cjdtcP2VZydRW9CPuGDzqjD5ZvDlEd/9+aqvh8h61suns4z6f4kiMPI7o7Abb0D/Dul
 /35isVuP8/DMTHbFsdAjf7U6zh5B0J4DV/5N1TNJ2rd4ZDOXnyM8oJecqvWwyZmqoEEk
 96lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nWf2HTlHvajnOuURdmbOCH1BsMPANlvcDtR+uHH1c/o=;
 b=qk/hSrbmQBWu0jTeIRKkuvJcGGWYtUJyT8Ui1OOWdn7pmTGMMtMWoXjiK7qAkboLH8
 ruhwIjko8Uq9EDxclWebeA8jb8LnalXCLZnON8SvevIrOfKOiCM2Qt/BVH+5hyeNcpbe
 jkpthkq8Gwq47HJPIuAxcVYZn0zTsuWBZ4r4E2WK3xBamf0hYEJ6hMsZzox1/IAmiWpv
 HFZ5ZnNWlt1dLeTl+Qhe6d0LllPrjS6cj1Z4UxUQI4j/Q54ATBtRO82HxkpG/6wJ8ZpI
 W8KuQNkxoeM1BQZ+LdRnK/9lZ0h6+2HLVwG8vrZbl/B9sgE4HLqqa/yfVnZp/Xhl0uDF
 unLQ==
X-Gm-Message-State: APjAAAW2m3Kl9KCn2+iO9CMQpZsN5mU7nQ5TVej8UmNF1ZF8xqX99hJF
 k6U3poa6ASw6fr0Ox5GhrMCY4F81tYwJkkt2vRs=
X-Google-Smtp-Source: APXvYqyHo1oKl4GlHZNqIdSh9s/yhdk6UrxPzDtc2W5FdljAfSMCHXimGZ8nSQ4DxF/SA85CwrN3CWQb7cGs1IHoLro=
X-Received: by 2002:a9d:7f16:: with SMTP id j22mr3857585otq.256.1575490420992; 
 Wed, 04 Dec 2019 12:13:40 -0800 (PST)
MIME-Version: 1.0
References: <20191204145233.11962-1-ardb@kernel.org>
 <20191204171744.o3ijdspnelqn5fgd@gabell>
 <08f05b18-12b2-0ba4-b819-b95ba27d1862@arm.com>
 <20191204185708.hdoa5gzmfr547q53@gabell>
In-Reply-To: <20191204185708.hdoa5gzmfr547q53@gabell>
From: Bhupesh SHARMA <bhupesh.linux@gmail.com>
Date: Thu, 5 Dec 2019 01:43:28 +0530
Message-ID: <CAFTCetTTgJRN+3+vqS+XbMMrra3xKqrEXzqEKpLsMn=G8peUjw@mail.gmail.com>
Subject: Re: [PATCH] efi/memreserve: register reservations as 'reserved' in
 /proc/iomem
To: Masayoshi Mizuma <msys.mizuma@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_121342_351766_B62965CB 
X-CRM114-Status: GOOD (  24.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bhupesh.linux[at]gmail.com)
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
 Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>, linux-efi@vger.kernel.org,
 Bhupesh Sharma <bhsharma@redhat.com>, kexec@lists.infradead.org,
 Ard Biesheuvel <ardb@kernel.org>, Simon Horman <horms@verge.net.au>,
 James Morse <james.morse@arm.com>, d.hatayama@fujitsu.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hello Masa,

(+Cc Simon)

On Thu, Dec 5, 2019 at 12:27 AM Masayoshi Mizuma <msys.mizuma@gmail.com> wrote:
>
> On Wed, Dec 04, 2019 at 06:17:59PM +0000, James Morse wrote:
> > Hi Masa,
> >
> > On 04/12/2019 17:17, Masayoshi Mizuma wrote:
> > > Thank you for sending the patch, but unfortunately it doesn't work for the issue...
> > >
> > > After applied your patch, the LPI tables are marked as reserved in
> > > /proc/iomem like as:
> > >
> > > 80300000-a1fdffff : System RAM
> > >   80480000-8134ffff : Kernel code
> > >   81350000-817bffff : reserved
> > >   817c0000-82acffff : Kernel data
> > >   830f0000-830fffff : reserved # Property table
> > >   83480000-83480fff : reserved # Pending table
> > >   83490000-8349ffff : reserved # Pending table
> > >
> > > However, kexec tries to allocate memory from System RAM, it doesn't care
> > > the reserved in System RAM.
> >
> > > I'm not sure why kexec doesn't care the reserved in System RAM, however,
> >
> > Hmm, we added these to fix a problem with the UEFI memory map, and more recently ACPI
> > tables being overwritten by kexec.
> >
> > Which version of kexec-tools are you using? Could you try:
> > https://git.linaro.org/people/takahiro.akashi/kexec-tools.git/commit/?h=arm64/resv_mem
>
> Thanks a lot! It worked and the issue is gone with Ard's patch and
> the linaro kexec (arm64/resv_mem branch).
>
> Ard, please feel free to add:
>
>         Tested-by: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>

Same results at my side, so:
Tested-and-Reviewed-by: Bhipesh Sharma <bhsharma@redhat.com>

> >
> > > if the kexec behaivor is right, the LPI tables should not belong to
> > > System RAM.
> >
> > > Like as:
> > >
> > > 80300000-830effff : System RAM
> > >   80480000-8134ffff : Kernel code
> > >   81350000-817bffff : reserved
> > >   817c0000-82acffff : Kernel data
> > > 830f0000-830fffff : reserved # Property table
> > > 83480000-83480fff : reserved # Pending table
> > > 83490000-8349ffff : reserved # Pending table
> > > 834a0000-a1fdffff : System RAM
> > >
> > > I don't have ideas to separete LPI tables from System RAM... so I tried
> > > to add a new file to inform the LPI tables to userspace.
> >
> > This is how 'nomap' memory appears, we carve it out of System RAM. A side effect of this
> > is kdump can't touch it, as you've told it this isn't memory.
> >
> > As these tables are memory, mapped by the linear map, I think Ard's patch is the right
> > thing to do ... I suspect your kexec-tools doesn't have those patches from Akashi to make
> > it honour all second level entries.
>
> I used the kexec on the top of master branch:
> git://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git
>
> Should we use the linaro kexec for aarch64 machine?
> Or will the arm64/resv_mem branch be merged to the kexec on
> git.kernel.org...?

Glad that Ard's patch fixes the issue for you.
Regarding Akashi's patch, I think it was sent to upstream kexec-tools
some time ago (see [0}) but  seems not integrated in upstream
kexec-tools (now I noticed my Tested-by email for the same got bounced
off due to some gmail msmtp setting issues at my end - sorry for
that). I have added Simon in Cc list.

Hi Simon,

Can you please help pick [0] in upstream kexec-tools with Tested-by
from Masa and myself? Thanks a lot for your help.

[0]. http://lists.infradead.org/pipermail/kexec/2019-January/022201.html

Thanks,
Bhupesh

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
