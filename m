Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FE41A478F
	for <lists+kexec@lfdr.de>; Fri, 10 Apr 2020 16:37:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5RA+aWvyMkFSpNFY8HVTypohrvKvphZriSJzEjy7NhM=; b=EHotDMkJtdKMA0
	ItZ1xU3IvJDs4uR4yK90X5xVsmQYOV6azDQMlC7A38bU0peLCcALfaoS0IT6uHrghdP3thH5sU0Iu
	M2u+7rqVu0o0/EHT+pWmdphXvCFl8gWf/4getPNLgSoI4YcMDN8TCJmBxUGyZQeFMPADJ/w5j+Wli
	XlWFJhpRReww6aJ22vZ3uYSk5qWH3vjuovbtp8aQ9/+3ZRWcstC676KvVdDXNboqTvXmeKlI2zvTb
	m18ieNf3exnId2wymP/4WG2cdy8QyXTXu39kYK+606XZ5X+5HpH+wneAIU+ls3N4jrsio5aUFhoNY
	NuRcJN4mIDCewrSqT/kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMumn-0006Ac-BU; Fri, 10 Apr 2020 14:37:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMumk-0006AH-SA
 for kexec@lists.infradead.org; Fri, 10 Apr 2020 14:37:36 +0000
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
 [209.85.166.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CF1E212CC
 for <kexec@lists.infradead.org>; Fri, 10 Apr 2020 14:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586529454;
 bh=Z7jwyP2YIo+tZuJUBf+I9TQcwmxTpRoTYKEYM9GjXnU=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=05xM/d7FTMx3Hm7AgKf0uySrqEZ07ZiCup/2iPA9xp2xt1r/7rqLmla8WdchRpxqd
 9jEqT8XWxJfVTNOCau2KiK68U6DSVWR6WNNu/u9ki+5n5lg9Z3P27GJr2MIBgrr7vz
 FIALJJANMx3Jhzb7P5R748E7lwr2tGGJCxxN7njA=
Received: by mail-io1-f51.google.com with SMTP id f3so1946376ioj.1
 for <kexec@lists.infradead.org>; Fri, 10 Apr 2020 07:37:34 -0700 (PDT)
X-Gm-Message-State: AGi0PubYIgOHNb0zdNksHYggRF0cyDiiLCFzc5THlpawUzkk/A8KCxuB
 zomb1OMSXIPXddU3wUawQ7GxJtfmApwRhogRkS8=
X-Google-Smtp-Source: APiQypILfZjHRweFRWy/NTWA4yyEihfNb9gcdnBTwp1cd9A2O7g+VfZP/40WXeqcbWUOuKJ7h+p4l4wvh9sUw4n3GjM=
X-Received: by 2002:a6b:f413:: with SMTP id i19mr4587125iog.203.1586529453796; 
 Fri, 10 Apr 2020 07:37:33 -0700 (PDT)
MIME-Version: 1.0
References: <20200410074320.16589-1-ardb@kernel.org>
 <20200410135644.GB6772@dhcp-128-65.nay.redhat.com>
 <20200410140151.GC6772@dhcp-128-65.nay.redhat.com>
 <CAMj1kXEM13Y5FCh8GvJGTueen3fa0u_JX66j0X10KPf4Z0c4Jg@mail.gmail.com>
 <20200410143313.GB8205@zn.tnic>
In-Reply-To: <20200410143313.GB8205@zn.tnic>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Fri, 10 Apr 2020 16:37:23 +0200
X-Gmail-Original-Message-ID: <CAMj1kXGn+RuJx2PJ+X5KJ3rtMyRRX2eOK2Zu5GuK1NHxum1M4w@mail.gmail.com>
Message-ID: <CAMj1kXGn+RuJx2PJ+X5KJ3rtMyRRX2eOK2Zu5GuK1NHxum1M4w@mail.gmail.com>
Subject: Re: [PATCH] efi/x86: Revert struct layout change to fix kexec boot
 regression
To: Borislav Petkov <bp@alien8.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_073734_934363_FB23300E 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-efi <linux-efi@vger.kernel.org>, "Theodore Y. Ts'o" <tytso@mit.edu>,
 X86 ML <x86@kernel.org>, kexec@lists.infradead.org,
 Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, 10 Apr 2020 at 16:34, Borislav Petkov <bp@alien8.de> wrote:
>
> On Fri, Apr 10, 2020 at 04:22:49PM +0200, Ard Biesheuvel wrote:
> > > BTW, a fixes tag is good to have..
> >
> > I usually omit those for patches that fix bugs that were introduced in
> > the current cycle.
>
> A valid use case for having the Fixes: tag anyway are the backporting
> kernels gangs which might pick up the first patch for whatever reason
> and would probably be thankful if they find the second one, i.e., the
> fix for the first one, through grepping or other, automated means.
>

Fair point.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
