Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F961FC297
	for <lists+kexec@lfdr.de>; Wed, 17 Jun 2020 02:07:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFn6RrnJrYvc8jiepq7hFyVp+WxbTR10vrMVYygwDvs=; b=aZIgkwj6+PuJcC
	7pwCR64dyUR+EeI6+4fZR7X0uXnQsDi+bL9+mu+1sNo5Ie+2iTAldWTMLFqS2yy/ch2xfsbQZDm9J
	kNmDqWqJKmAkczFkBsA2XVPOfkX1TpZX1ghKhCYRsSXfgEiuNC0iro6bL8+RbWyO6an3mcGat27bw
	fxNsuh4LbxmE52csdXLqoOcYSsAkt9WhPRVTbxg+oINOYdK6nV8/LkdSAoitvYXUyo1aVEkPDL34I
	/I/IXS0YrCy/WjarENKlZh4/gWGeQLonE+0I5AGh3nlUpxXXff2bQp2+P4WW4ce8pg1GJgeZ9WaMk
	Z00H72bjq5rCQTJP4wxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlLbu-0004ba-Vs; Wed, 17 Jun 2020 00:07:22 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlLbr-0004am-Rd
 for kexec@lists.infradead.org; Wed, 17 Jun 2020 00:07:21 +0000
Received: by mail-lf1-x141.google.com with SMTP id d7so167266lfi.12
 for <kexec@lists.infradead.org>; Tue, 16 Jun 2020 17:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HP1uFW4sLGpGIoEXTGEFuCHmhwb0G5+9yO9YHFU+ats=;
 b=B9RvaNNfw2XkhWkqlRQ3PtpGYvSfdqW+PwRggujQQq4AZ2B7b5X7/BnqV3v4c/2PkZ
 ENTqIwC62xfVi9KUmaVAVUpoXme71+DSirnDrOWf9H+TaASjGvOPKPcZe01K2pTusWK4
 hfjPILq5L217zE2mGrEFMskNrCCGRfMLIg/v0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HP1uFW4sLGpGIoEXTGEFuCHmhwb0G5+9yO9YHFU+ats=;
 b=UGUpxj9UlaJjYObqKQdu+Ajxak663fLx9gzXxNzZ8PLg3FYO13XNW3naILyPJgS+Xc
 LuPxeJrtTgeTR1aECjPHJyFu/oXMbHn3Yiwp4jQwlQCeutkgXz+9pxrv86BzXnwaBp4u
 JYeMUqEa/cRYCigfbG7jnZnCJPYL8u536dpyEZK4KQo62/9sUn1M7aMRwURwr3OudF2B
 6WYZLFUcGkXeNqeKvJbOmshHEqNR292wB1Efsf/J/iPvGM2Dqyq9JL3yxmNOmJjXuV/J
 DKF6P5t2D67tx9ZBb6PlcU+yNNBawtSsR4x4+RkkkKbEsHM1IHurhGkKXEXo0RNUN1GZ
 PKfg==
X-Gm-Message-State: AOAM530lVcmuFPvpPkDvlilYFjeRTtc4xKJib+mzJrzAy4Rn5jPscAA9
 irNQQHUXhlXhKpFIHaA+9LcUyJ9nJQU=
X-Google-Smtp-Source: ABdhPJym9WVFOAgp46V3ZLB1XdVP+TIIVx0npQpHYG4vudAcytkk3lnAqpVk8l8M2Tv0FBe77kYdRw==
X-Received: by 2002:a19:2209:: with SMTP id i9mr811440lfi.46.1592352436459;
 Tue, 16 Jun 2020 17:07:16 -0700 (PDT)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com.
 [209.85.208.171])
 by smtp.gmail.com with ESMTPSA id 144sm2980329lfm.87.2020.06.16.17.07.15
 for <kexec@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 16 Jun 2020 17:07:15 -0700 (PDT)
Received: by mail-lj1-f171.google.com with SMTP id y11so641370ljm.9
 for <kexec@lists.infradead.org>; Tue, 16 Jun 2020 17:07:15 -0700 (PDT)
X-Received: by 2002:a2e:97c3:: with SMTP id m3mr2751552ljj.312.1592352434877; 
 Tue, 16 Jun 2020 17:07:14 -0700 (PDT)
MIME-Version: 1.0
References: <CAEJqkggDJEC4W9V6ijmPoE0-soKE7zBUWUiDLdCZArEsDo9vrQ@mail.gmail.com>
 <20200616222547.1979233-1-nivedita@alum.mit.edu>
In-Reply-To: <20200616222547.1979233-1-nivedita@alum.mit.edu>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 16 Jun 2020 17:06:59 -0700
X-Gmail-Original-Message-ID: <CAHk-=wj_1mQmG5H4ZVcNudjhQyxTNTtni6hV1nTkEY2QQJzgAg@mail.gmail.com>
Message-ID: <CAHk-=wj_1mQmG5H4ZVcNudjhQyxTNTtni6hV1nTkEY2QQJzgAg@mail.gmail.com>
Subject: Re: [PATCH] x86/purgatory: Add -fno-stack-protector
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_170719_898072_27B299E0 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Gabriel C <nix.or.die@googlemail.com>,
 the arch/x86 maintainers <x86@kernel.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Jun 16, 2020 at 3:25 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> The purgatory Makefile removes -fstack-protector options if they were
> configured in, but does not currently add -fno-stack-protector.

I took this directly, since the build failure seems so annoying if you
happen to have an affected compiler and config.

Maybe that's not very common, but ..

              Linus

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
