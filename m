Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0815A9E333
	for <lists+kexec@lfdr.de>; Tue, 27 Aug 2019 10:53:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEZ58TU4PnO+DPkUE2tvOPqdZi8h+Ya1n+rXNT8g2g4=; b=BY+rPlxmU99i//
	O2D9jCzBGltq3sxxKUD4VDBCsY6Clh7/5Rv1rR0idyA+eAvvb+Dpruj8xUC4tweFsmia9GCHz783z
	8Obu5XvHHC8XCmT+Z2lt+ynCYZgUc9G+VYiFAKJ/t2m2LeN6hFjD0jQq9IBUsTCtH1XFXiIYfit+d
	sPjdja7vwe8IsmQDtoCp3arYhuDbWG492xTe82RKZWMdMnWeDovbpQovOdCMZ5TQgdbg/jsPNVuIP
	1cIg5ZWjgoOTy0pXgewaZXa/rfNm/F104xGuagglhO9+a8dVtTop2PxC8FjMDHuUgsKHwxqpMCvfO
	ysRIFMO+MXY9aDUsxpDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XEd-0003lV-Hh; Tue, 27 Aug 2019 08:53:51 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XEZ-0003kR-S6
 for kexec@lists.infradead.org; Tue, 27 Aug 2019 08:53:49 +0000
Received: by mail-ed1-x544.google.com with SMTP id z51so30263713edz.13
 for <kexec@lists.infradead.org>; Tue, 27 Aug 2019 01:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bNx6tz74xU9hmYEbYc07ctD8LymWFI8TfuChqz+asMw=;
 b=OkJdw2eC6zdxQvsL0pfZDT70HNL0PbEw9zH0O9vVl14zTUGlZ9BzbAsXN0qpMI50hJ
 7RegQJE3tcCgr9J4XETmI5hDEz7QVZW6u9FPj90ZNUT3jFxKulaFD1E9Txsw3ohzrp/m
 dUmpvrH02s3Kvh262aT3G3dbe9sTdd9Ew54eD5rXOTRrOEyAUMLTrhEdXqdAzqzg5c9W
 XYEprG+ove5xUlp7s7GP0pLRhlJJIkxdVTEt0liug8/l+q97x9F4MWsGqcTlgRyzx96n
 uY426V9OAeve1Ca+tY7le8a6e4rIjNc5f8u8A6Xv0EkLIIbmD5g5SVBAMgNq1U5zNHzs
 NYCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bNx6tz74xU9hmYEbYc07ctD8LymWFI8TfuChqz+asMw=;
 b=PidqHt+o+FGvSa2t9Ui2vfzoOpZs4lXBtEpweq+8KyhV1hq2du78h+pyS2j35Xl0CA
 JxiukDTtUbiiCUMzIiLjl1NRvCl9UeGbsQuRMShG3umJ0vP/xygB60ppiBGeYhbbGPNq
 DZWqHyUquFabziKjvnRg3OfQwZ7zj+U738mRr3bjHn2yenQN0sgBruu3zYCMtzB6T7s/
 xj0NaD+lntFetyiNKObT3Njz+RGC2DgXq89vg+jtLmz7MQFcPXzYC2O/48LpwzrjB1pe
 BBsphpKTJPihkf7cYxOySb5JnWB/ZGxX+Xdy8g3UVshkIiSayh5SYCIdZYJaChSjznnG
 9+fg==
X-Gm-Message-State: APjAAAWouG7D8lEiQANC+mtv4Nw+qR+3R9rR24ttlhAJQdu7Npwj+mw3
 18Jo++0tK6zncizhBjuuELAN2dIDpLKau/r2wcjIOA==
X-Google-Smtp-Source: APXvYqyujNBN4dohlktkcKzTTpAke4sYdHmNFq8k7RRaUgv2efVHw5GdohHpNB+V/zF/mT8mb5H35st0QN7czk4H0hU=
X-Received: by 2002:a05:6402:1344:: with SMTP id
 y4mr22538757edw.124.1566896026158; 
 Tue, 27 Aug 2019 01:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190826190056.27854-1-pasha.tatashin@soleen.com>
 <20190826201313.246208e9@why>
 <CA+CK2bAS-jDwY-qKfZQD8TbvyAhS1+rBvcxGqkR4BHd5NR5BGQ@mail.gmail.com>
 <d7461fb3-0f6d-8abf-084d-ce0be1f1a18d@kernel.org>
In-Reply-To: <d7461fb3-0f6d-8abf-084d-ce0be1f1a18d@kernel.org>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 27 Aug 2019 04:53:35 -0400
Message-ID: <CA+CK2bAk4Xb_hxh2KLxWKa8ogM-jO1MpREmc02TmUMpdJ2ZbSA@mail.gmail.com>
Subject: Re: [PATCH v1 0/6] Allow kexec reboot for GICv3 and device tree
To: Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_015348_050783_4DBDE8C3 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 James Morris <jmorris@namei.org>, LKML <linux-kernel@vger.kernel.org>,
 James Morse <james.morse@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

> > Running Linux without EFI is common, and there are scenarios which
> > make it appropriate. As I understand most of embedded linux do not
> > have EFI enabled, and thus I do not see a reason why we would not
> > support a first class feature of Linux (kexec) on non-EFI bootloaders.
>
> Define "most". All the arm64 systems I have around (and trust me, that's
> quite a number of them) can either use u-boot, which has more than
> enough EFI support to use this functionality, or use EDK-II natively.

OK. Is this the most common configuration in the embedded ARM64
devices currently deployed: phones, cameras, consoles, players, etc?

> > We (Microsoft) have a small highly secure device with a high uptime
> > requirement. The device also has PCIe and thus GICv3. The update for
>
> PCIe doesn't imply GICv3 at all.

My impression was that without PCIe GICv3 is rarely used, and this
could be the reason why this problem is not seen outside of larger
machines which normally have EFI enabled.

>
> > this device relies on kexec. For a number of reasons, it was decided
> > to use U-Boot and Linux without EFI enabled. One of those reasons is
> > to improve boot performance, enabling EFI in U-Boot alone reduces the
> > boot performance by half a second. Our total reboot budget is under a
> > second which makes that half a second unacceptable. Also, adding EFI
> > support to kernel increases its size and there are security
> > implications from enabling more code both in U-Boot and Linux.
>
> You're are missing the point. kexec with EFI has 0 overhead (no
> non-kernel EFI code gets executed), doesn't impact your time budget, and
> only relies on a single in-memory table. This can be pretty trivially
> provided by the dumbest EFI shim.

Thanks, this makes sense that the Linux boot time won't be affected. I
have not tested how u-boot was affected, but was told 0.5 second
longer to start.

> All you are describing above is a set of self imposed limitations in
> your bootloader, which you are fully in control of. So instead of
> reinventing a square wheel, I suggest you adopt the existing implementation.

I am not sure this analogy is correct, I do not think that non-EFI
enabled kernels became legacy.

> Another reason not to do this is interoperability: I want to be able to
> kexec whatever Linux kernel I want, without having to cope with all
> flavours of the same functionality. Effectively, the EFI table is a
> private ABI between two Linux kernels. We're not changing it.

This is exactly the problem: by having this region defined in signed
DTB file we reduce the amount of communication between the kernels.
Passing modified EFI Table causes us to pass more information from the
first kernel indefinitely through updates. Thus, increases a chance
for a security compromise. We are not changing EFI ABI between
kernels, it will stay as is. All this code does is enables kernels
that do not have EFI table communication between them a way to do
kexec updates with reduced amount of data exchange.

Thank you,
Pasha

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
