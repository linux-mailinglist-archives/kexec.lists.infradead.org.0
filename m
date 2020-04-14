Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ED1C1A739F
	for <lists+kexec@lfdr.de>; Tue, 14 Apr 2020 08:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=66AVzzRFFECaPab7cXCXVyUw6zHyx+s61MFIJSJTSB8=; b=SNby07kt1P85o4
	+LxIwlIWIq5b0/1/mx+88MVZDmBJa3s1wj9RG2f/16uoF6B39sLRALooUBHVtdiDFfVQmrb6uqOyh
	byPkAUMHt59Yc1fEBliZ/XXtLwfcZyV2DKONTNoa+cRp3tdzZtPDc0l2dNrZGiHXT5dpjSJu44osT
	OaD6J7U6/LdEng9e6UoerdVMyK+5Nxty5SjpY9sdW85tZV8x38q3vxc5gKz+c73LWe8StipANjf3h
	fhKxbWHEQJQhtv4TvhY+1izMNkCBRdMp0a+pjmeGXFl0UdO2teZGyUiCYfJAFiOk58RBhJVi/vuEF
	VGU1RhLcj4YTc6zbsSBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOF2Z-0001rJ-Cn; Tue, 14 Apr 2020 06:27:23 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOF2X-0001qx-2Z
 for kexec@lists.infradead.org; Tue, 14 Apr 2020 06:27:22 +0000
Received: by mail-wr1-x443.google.com with SMTP id f13so12914680wrm.13
 for <kexec@lists.infradead.org>; Mon, 13 Apr 2020 23:27:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Pp3TbajE6USya1p1kPwUAIS7aCYW8lYss1z9XY1NLSU=;
 b=k+k79ZaMkCSE5EVgFSHlRI8rVTLKrsQZXC6dAZUCs8lP7k/E4TemgfyRl9Uhu0lEI/
 WMBkxfk8NIhBPtZCwEvc310Pp0eO59AMi0ubXDs3Dq83gK0B46kLNBrjetd4d7+wfGZa
 nzh9CFpYA8pG95u6IhCEOw37EZcOQE/E7wN+UYFzMP36mFhmkzHtY/ky0SJW+QgIFmtS
 5McQHisGlJxjyQpP+cfjDiyQqnUppeluFEKaTzPxlCU+QrAu6sSC94ZATnWnCRkLM/zX
 LWuOL3o5+Tm/5pNp6YKUDVxREs2Tsx/Cx+I68hP7QYPLGQiVIHlEFzeQROBvrEgVqzAz
 hVyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Pp3TbajE6USya1p1kPwUAIS7aCYW8lYss1z9XY1NLSU=;
 b=BNzrYqQLCcGqwnnsP2lZfVVLY17dqV5u9Z+RLVZCJVn9V3AmUggviZ34/AeVJwRys/
 7YdPUsL4Ob+iMgf9dp1RXYxqo8wu5kT4n4cxwcS4LDHEC56XxbIF2QDt3PW1CpL0S2nb
 9fpZceJVmnzm5qBmPDlYjoL+P+DhaRK64iGSjctAoO0PTdOPc5Y+qc7B4EMSku4wtZAq
 lJONbuJRYluYXBHUfYfhMfzUXi2/UzHKzmj1cMSjqpf44cyOD3BnFbggEJvkauJFHgSh
 JECzjpEniFTg8S35lOf5JZkfMeIJ1CmjsMR54XXc6hCiMoml2270KZMebMjRI789LRbI
 W8LA==
X-Gm-Message-State: AGi0Pua1ecxh4DKBGkvY9Tso/GXY/UdT3WSchHpDBcQpoXGRQMUWoDFh
 JUgAerKt1/PsLL1YUil9YAY=
X-Google-Smtp-Source: APiQypLspMLRNRywgfLvdyn9tUzStiaUbcdWfbTU1t1J5ecrnnJPqSAi40+a/VRrvcDU4/aPihV9zg==
X-Received: by 2002:a5d:4752:: with SMTP id o18mr8283149wrs.283.1586845639044; 
 Mon, 13 Apr 2020 23:27:19 -0700 (PDT)
Received: from gmail.com (54033286.catv.pool.telekom.hu. [84.3.50.134])
 by smtp.gmail.com with ESMTPSA id a7sm1028199wrs.61.2020.04.13.23.27.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Apr 2020 23:27:18 -0700 (PDT)
Date: Tue, 14 Apr 2020 08:27:16 +0200
From: Ingo Molnar <mingo@kernel.org>
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [PATCH] efi/x86: Revert struct layout change to fix kexec boot
 regression
Message-ID: <20200414062716.GB84326@gmail.com>
References: <20200410074320.16589-1-ardb@kernel.org>
 <20200410135644.GB6772@dhcp-128-65.nay.redhat.com>
 <20200410140151.GC6772@dhcp-128-65.nay.redhat.com>
 <CAMj1kXEM13Y5FCh8GvJGTueen3fa0u_JX66j0X10KPf4Z0c4Jg@mail.gmail.com>
 <20200410143313.GB8205@zn.tnic>
 <CAMj1kXGn+RuJx2PJ+X5KJ3rtMyRRX2eOK2Zu5GuK1NHxum1M4w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMj1kXGn+RuJx2PJ+X5KJ3rtMyRRX2eOK2Zu5GuK1NHxum1M4w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_232721_116399_9F8AD9AB 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mingo.kernel.org[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Borislav Petkov <bp@alien8.de>, Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org


* Ard Biesheuvel <ardb@kernel.org> wrote:

> On Fri, 10 Apr 2020 at 16:34, Borislav Petkov <bp@alien8.de> wrote:
> >
> > On Fri, Apr 10, 2020 at 04:22:49PM +0200, Ard Biesheuvel wrote:
> > > > BTW, a fixes tag is good to have..
> > >
> > > I usually omit those for patches that fix bugs that were introduced in
> > > the current cycle.
> >
> > A valid use case for having the Fixes: tag anyway are the backporting
> > kernels gangs which might pick up the first patch for whatever reason
> > and would probably be thankful if they find the second one, i.e., the
> > fix for the first one, through grepping or other, automated means.
> >
> 
> Fair point.

I've added:

  Fixes: 0a67361dcdaa29 ("efi/x86: Remove runtime table address from kexec EFI setup data")

Out of abundance of caution. :-)

Thanks,

	Ingo

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
