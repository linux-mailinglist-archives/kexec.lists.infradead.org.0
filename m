Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3CA1667B
	for <lists+kexec@lfdr.de>; Tue,  7 May 2019 17:17:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouzRhJln54u4A9pBPm72W5spQZJT0zvhSJTYrlOF91o=; b=bb5wiMZmeP6XX5
	GxOBvhoii9HmL7vPFDs3vaV5dIEtmYyL1Fnw7Mfhq5fVz8wPL4BzjV7aFIqWpAahPEGSURM1x8Enz
	T+nIQW0Ooihe+Dn9JUNBlvqtkmW+DhoDgQwzSgA9xlWcaNhx6QgmVaJIjPxi7ZNqxYesP3QQvTWQE
	383chXw+MOvcY1K4jWgcNjUjwFD4quuzSlEo1Sj9TIDXNsLtk6vXGyuTBAW6u9ggw8Tm0e5wnooKI
	TYPrZphSuPAtf6pzbhk82SFX0SS9xK8IGG6ES0IoMkzvRHLD8bW/8X5aRHS/zs+Oov1l+6YM6tBQe
	+/iw0JZ/4Qe9dwvEcnWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO1qk-0002K0-RA; Tue, 07 May 2019 15:17:46 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO1qg-0002JW-Rl
 for kexec@lists.infradead.org; Tue, 07 May 2019 15:17:44 +0000
Received: by mail-qt1-x843.google.com with SMTP id d20so1894589qto.2
 for <kexec@lists.infradead.org>; Tue, 07 May 2019 08:17:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=koconnor.net; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=qirsv4Vc739U19j2h1A59lx4lpLuNp3g0Ai2ar2tDWA=;
 b=P71F2aAn1y4MlSBtQlBc9w5WyLEnk0/UPa7IGZKMyqPYd0e6AdnNpFVDLVEDpXpn1m
 6khoQZVw8+g5BKpgGbZz/2iy1grYRrkCJto2NE8HD/XUZ0wKouScBBKdOw90F6wG+k/4
 TfVLoIXBeNGm8fAyqQQkMKHuVwCvI1QXzh0bs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qirsv4Vc739U19j2h1A59lx4lpLuNp3g0Ai2ar2tDWA=;
 b=WiMFh4qw8LmuSWS1lQ4z9uomit73r+iKjNwA8SyS5I6UA4QDCtrxsUeQLswvSLe7AF
 PiHhskZ3C4HT/UqkVlArdMR1UrL4XD7QzpGC94DyDJceFEm6MZk9hLc5mQMKpfk00mC7
 4JeYMPBbQftWL6K4Lh7SclHIQlWd4FrMIojCfSk7S5qbIT40yi0s26uIyQVB+50YzlSQ
 CIaMH48HWyYmcpAzpYiIKajZrKUvpHWHBOMxJdRC/aap37xqkKvddsxvDdg5jcbS1JCz
 VtqXg/3cLUfLaZ1RNG+XtWrq6AxEByKQLmIxyPR4DV8+75caT0tdZ4WqXyWqc9o+tQ3b
 TBQg==
X-Gm-Message-State: APjAAAVJ08X3d/co5595rcK+TWrf1QysPckhqNCM6Iil559bMS3KxdMA
 Mxvf3MUXcFSFj0QE2PEPyDePPw==
X-Google-Smtp-Source: APXvYqzDktELs0gEWadc2qnBafnykW+ES1mJqUZiNpdw/sznk8dg9v6mo/70nI/ArzUY0YNoPMb6iQ==
X-Received: by 2002:ac8:3593:: with SMTP id k19mr10435312qtb.210.1557242260808; 
 Tue, 07 May 2019 08:17:40 -0700 (PDT)
Received: from localhost ([64.9.249.165])
 by smtp.gmail.com with ESMTPSA id i24sm10461570qti.67.2019.05.07.08.17.39
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 May 2019 08:17:39 -0700 (PDT)
Date: Tue, 7 May 2019 11:17:38 -0400
From: Kevin O'Connor <kevin@koconnor.net>
To: David Woodhouse <dwmw2@infradead.org>
Subject: Re: [SeaBIOS] Real mode kexec failure with non-IDE disk
Message-ID: <20190507151738.GB20031@morn.lan>
References: <e5872703412f9a56c10df52d9793ca2a6401d7f0.camel@infradead.org>
 <20190501025601.GA5342@morn.lan>
 <1689977da7b323b360c35fc021a67e766c3347bb.camel@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1689977da7b323b360c35fc021a67e766c3347bb.camel@infradead.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_081742_905877_CCF379F9 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: seabios@seabios.org, kexec <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi David,

On Wed, May 01, 2019 at 11:16:03PM +0300, David Woodhouse wrote:
> On Tue, 2019-04-30 at 22:56 -0400, Kevin O'Connor wrote:
> > That call trace certainly looks odd.  The SeaBIOS debugging info would
> > help - try compiling SeaBIOS with debug level 8 and grab the log (as
> > described at: https://www.seabios.org/Debugging#Diagnostic_information
> > ).
> 
> Choosing Xen because it actually succeeds, while Linux real-mode boot
> then dies a bit later even if I use IDE disks...
[...]
>The full log from boot (including the boot
> of the first kernel) is at http://david.woodhou.se/smi-wtf.txt

From that log, it doesn't look like SeaBIOS itself is reset during the
kexec.  I could be wrong, but here's my understanding of that log:

- SeaBIOS starts normally and initializes the virtio-blk device

- SeaBIOS hands control to the bootloader.  The bootloader makes
  various BIOS calls that read blocks from the virtio-blk device.

- At some point the bootloader loads Linux.  Linux reinitializes the
  virtio-blk device to its liking.

- At some point, a kexec occurs and then SeaBIOS gets a request to
  read data from the virtio-blk device.  However, the virtio-blk
  device was reset by Linux, so the SeaBIOS' device structures are no
  longer valid.

- SeaBIOS waits indefinitely for a virtio notify event that it wont
  ever receive (because it is waiting on a control structure that the
  virtio-blk device is no longer configured to use).

If SeaBIOS doesn't get a signal to reinitialize itself, I'm not sure
there's much it can do in that situation.  (Though, as above, it's
possible I've misread the log.)

Cheers,
-Kevin

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
