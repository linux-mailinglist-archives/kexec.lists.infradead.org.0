Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B1712DC1D
	for <lists+kexec@lfdr.de>; Tue, 31 Dec 2019 23:22:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=seXyEQ9HmApmL3GKw3/HcQl20HZlHnsrjjd/brTSS9c=; b=RO3yb1zhIb384E
	36TBRwY1JlgoZEq8JQG+2/T3spVM41uCORPIhls39eyXlc5k+GpT1dcVNwA5nMr53EEd4l2w2Q1DO
	TzlKfIa69A3v0aTpmvyeXnwyZBY5bznowViRlEx2wyt8Eiorfs6/3B5mzuDn5ljBmqklECgtcmjOV
	7Dibj/iMgpEkvCd5q+G6bajq+YMkCgUSTPrkafl1vFFgIzuI3hwS0NwWi2Jb1EAwtDNA42Kp8nq8e
	nZ2jQWtpc1p7nWKgBtOKTsh0e2Hy6RuQD+HKaXS/xbAVJbGyL+8mBEC/suNmAWHt0yz7y8kzcEiUZ
	sQTnBBrV0mitROSC7V0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imPts-000876-2b; Tue, 31 Dec 2019 22:22:04 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imPto-000868-3T
 for kexec@lists.infradead.org; Tue, 31 Dec 2019 22:22:01 +0000
Received: by mail-ot1-x342.google.com with SMTP id 66so51718435otd.9
 for <kexec@lists.infradead.org>; Tue, 31 Dec 2019 14:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KlT2jnj7z1iFkAKUNQWbQsSo+TR/YWaOOgSod0k7w7Q=;
 b=SDs1XLSXb/UhPFICpRz+QEz2jdxJ6mnD5z1RgiUjXl2kSN/SRjY9qdkxJyPAomSFTo
 4W9MT/Op5DGfy6j89Y0CN+wSoO62llB4hEsqZe/GklaDrEVyBKPBfqdEaWhDU8nIxLmJ
 9G0L5DxAM6OUB020gwJZmEOLfI2umTuE8DSX41pN9b6WJW23421YpX2Wkr4V9QE/5XC1
 TzPh49oF7f8lsyZ4X7hp8T26FyBOWgQZPAGfV5pzgheLaoIKmuE6AU6YHebo+rk5XUYQ
 tjdS2jb/XLEk3L/6NONnK54wVAI1n0emlo3so96l7qP/07/oL/REYGzpBJAAD9H4Sk7W
 lbSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KlT2jnj7z1iFkAKUNQWbQsSo+TR/YWaOOgSod0k7w7Q=;
 b=kOcsrDGT0AansM+S5IKrLoGMDyF3shFCfljvMgDONfiQMtl9XNldz3e+fizP00Nl7A
 Fuy2MKgdStOfhOoq6aK7uESypyAA8jHtogAmsvaY6DXrRbHBi+9GIFL4qvYENusV6qgy
 zREpse60D/0BKvoBWG74qGfhF3eZ41/6QQMtNbB+FaWIfyxEIcHVZPWwQ9PsyeogHUHl
 SSScqTXCpMkB6nLHaq1Xxc6IUyWzJT6Hw0JsGsG+CcKE7tjB8EQid/BKxx023RSSIt7C
 JtJzMNr7C33Tt14he+IkdZDGunX3PCL6hrRBkIvQXio7xqH71btzibNcLVp2/BUmvAhe
 qj9A==
X-Gm-Message-State: APjAAAWO1+fViYbNf4JpWoIjRzii+XicHv4fkRucl+40oKmMY4Equcpt
 lH1sjXXP4DClpyutOjRVb5OszglsyDUGXyKCgUq9Ng==
X-Google-Smtp-Source: APXvYqy1Nlu/1GbgH0I6iq3zMFnAaxwd8ZFUXv3pxT0OCb9TlTQPfJLMpeN7TKNH/fK7w1/i3uKBuqDIMtTj0BVo/Zw=
X-Received: by 2002:a9d:4e99:: with SMTP id v25mr84887327otk.363.1577830919298; 
 Tue, 31 Dec 2019 14:21:59 -0800 (PST)
MIME-Version: 1.0
References: <157773590338.4153451.5898675419563883883.stgit@dwillia2-desk3.amr.corp.intel.com>
 <20191231014630.GA24942@dhcp-128-65.nay.redhat.com>
 <CAPcyv4heY1CKAWo1AKKifYUtXdKjoUt45dZbCNhB2o59hkXY6g@mail.gmail.com>
In-Reply-To: <CAPcyv4heY1CKAWo1AKKifYUtXdKjoUt45dZbCNhB2o59hkXY6g@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 31 Dec 2019 14:21:48 -0800
Message-ID: <CAPcyv4idLx58iH0tA08vrVdvornd-jAwSwHQ6Eha+Z_UQUDDAQ@mail.gmail.com>
Subject: Re: [PATCH] efi: Fix handling of multiple contiguous efi_fake_mem=
 entries
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_142200_210886_E92C920A 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Michael Weiser <michael@weiser.dinsnail.net>,
 linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Taku Izumi <izumi.taku@jp.fujitsu.com>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 1:11 PM Dan Williams <dan.j.williams@intel.com> wrote:
> Perhaps a prettier way to do this is to push the handling of each
> efi_fake_mem entry into a subroutine. However, I notice when a memmap
> allocated by efi_memmap_alloc() is replaced by another dynamically
> allocated memmap the previous one isn't released. I have a series that
> fixes that up as well.

Available here:
http://lore.kernel.org/r/157782985777.367056.14741265874314204783.stgit@dwillia2-desk3.amr.corp.intel.com

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
