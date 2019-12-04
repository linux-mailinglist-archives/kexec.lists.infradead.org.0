Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26BA2112882
	for <lists+kexec@lfdr.de>; Wed,  4 Dec 2019 10:52:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/ghS1+q9R4qP4d+rVKw1V7cSo7rN8MGeXSoK4ityGk=; b=h00Ujkls7xh+oc
	epPWTobbhtI1zvwmYqmaI3MG6ZQutFbmHw+9oIDp5wBETZ/2f8h1YxbbPf3LE/MkO+5TvTjc9tQcV
	sRFphFe9c6VD6tUO7nzIsirgvbyDyAGLMPnElJNi2c3pidsBktG6AwPZjPrIm1G8499ye3FnaPmgX
	spxBpeG1A6zW2OuOSkmBsSx+jXKBzjf6Z2Vvw9fcHbsHnlqa6LaxYvoz1Sk26VrOKj5WvXz7cBkgH
	emaU+8rNUF/vLufY/bRVe6hFW0E/XZ3FixAkAx+BMjEMmVa0/+nrEHZFElInpn2Gm2JeR57BG59R5
	Klbz1fZHUEASwawA8o4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRKJ-0002wV-D8; Wed, 04 Dec 2019 09:52:07 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRJW-000254-DK
 for kexec@lists.infradead.org; Wed, 04 Dec 2019 09:51:20 +0000
Received: by mail-wm1-x342.google.com with SMTP id p17so7080680wmi.3
 for <kexec@lists.infradead.org>; Wed, 04 Dec 2019 01:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=U+MqMdaqYA9wxrEDifn792XFhLysGc8RSGDMrug+w3U=;
 b=Przb2Mp6fXtj52PQek5CbvK0m72zcxvl/tkEZHPbnWSa++nCWSJZZmS9++pPkRXrHG
 BmP235WX29P6BS93AZhlst2RD7hH2WoH2RVk3T/9HoyC4AgEsDCHcd1EHI0AlYUuXjJe
 dI3x/0u7OgFjrMrvJ6WcKeOUmYgR0U1yn16Yy5SlGY6ZJDeX94v6WUG23ht7i1IPjrMw
 okf5mTcha9+T7jwil9n90t9RCeixq59sYXp9pI34nZ9pevxFrWCHHd0Suk3OvMD0bdvY
 NyMXQL9g/QB8vKBbvg2D257IjR/amd+XQRUdX4R+nQbtGGP3uveM6gu9gV1MrkTo+DW+
 pA8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=U+MqMdaqYA9wxrEDifn792XFhLysGc8RSGDMrug+w3U=;
 b=t+XXSZMZGl03sIPOl4z5dDqa5V0GbeJM/oTyJscshal5A8IKqkS8BK2uKbssba/YQL
 wIDXUTzVTQDtuGRM7ZDP8oG+vr1kH7ssbT1R4o/Rnj/DM7+ezyxNNbFHV9WN5QCOa7kX
 Y+m6lCRU/yn07ksFRRC59iaq7JoCijjZ106slhiYvKjwVkmXcZ6SJKiP8KdKaocLn36c
 w4bMYfQW8H43wB3WeZercpaWHruvEcrdTr5kadk7vs5BdAHz05Ybf3Aup/tmwao+f5/X
 cZArOWKI4QPI8SCAXoidYDVdgg/6QBLPpCVltxPAt7QROUSfa9uh8s2BSG63T3ocKuVe
 kcEw==
X-Gm-Message-State: APjAAAXY3m8m6GS4lvRfH4wJvXl+TmnE3fbs2JEszz2m22kfgwhmBmdx
 bL+4ZtKLhj+R+FV3oxcXV06b3HjlCPEXZ67YVRUTxw==
X-Google-Smtp-Source: APXvYqzLvQuJFDKa5YEtxpmabNfV3tNQmNC8LrgshglGnlL4aV86T/kP4WSpVw03YPNpB05E/92NdOuel+uj0rhMQXU=
X-Received: by 2002:a05:600c:141:: with SMTP id
 w1mr18577201wmm.61.1575453077074; 
 Wed, 04 Dec 2019 01:51:17 -0800 (PST)
MIME-Version: 1.0
References: <20191203201410.28045-1-msys.mizuma@gmail.com>
In-Reply-To: <20191203201410.28045-1-msys.mizuma@gmail.com>
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Date: Wed, 4 Dec 2019 09:51:13 +0000
Message-ID: <CAKv+Gu-teb+3a29cZVc0cxZrXonQeO-EtPugPaQ1QFbeBYjGTw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] efi: arm64: Introduce /proc/efi/memreserve to tell
 the persistent pages
To: Masayoshi Mizuma <msys.mizuma@gmail.com>, James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_015118_652074_28F645CB 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Cc: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>,
 linux-efi <linux-efi@vger.kernel.org>,
 Kexec Mailing List <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Eric Biederman <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, d.hatayama@fujitsu.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, 3 Dec 2019 at 20:14, Masayoshi Mizuma <msys.mizuma@gmail.com> wrote:
>
> From: Masayoshi Mizuma <m.mizuma@jp.fujitsu.com>
>
> kexec reboot sometime fails in early boot sequence on aarch64 machine.
> That is because kexec overwrites the LPI property tables and pending
> tables with the initrd.
>
> To avoid the overwrite, introduce /proc/efi/memreserve to tell the
> tables region to kexec so that kexec can avoid the memory region to
> locate initrd.
>
> kexec also needs a patch to handle /proc/efi/memreserve. I'm preparing
> the patch for kexec.
>
> Changelog
>     v2: - Change memreserve file location from sysfs to procfs.
>           memreserve may exceed the PAGE_SIZE in case efi_memreserve_root
>           has a lot of entries. So we cannot use sysfs_kf_seq_show().
>           Use seq_printf() in procfs instead.
>
> Masayoshi Mizuma (2):
>   efi: add /proc/efi directory
>   efi: arm64: Introduce /proc/efi/memreserve to tell the persistent
>     pages
>

Apologies for the tardy response.

Adding /proc/efi is really out of the question. *If* we add any
special files to expose this information, it should be under sysfs.

However, this is still only a partial solution, since it only solves
the problem for userspace based kexec, and we need something for
kexec_file_load() as well.

The fundamental issue here is that /proc/iomem apparently lacks the
entries that describe these regions as 'reserved', so we should try to
address that instead.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
