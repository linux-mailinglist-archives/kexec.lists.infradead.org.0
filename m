Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2BCC14338D
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 22:56:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wsj1HN5jKYcLDQBBztcM+k/bKR6WcXRporISst0krKY=; b=eRNCX/QqfNdJJo
	0pbNt5vZuR6AHWmSGCzp7agVptLBJYqXbKnbRFQUJb2ifmFXN128NwjVmWsvGlXTzKtcA5gIXwClr
	3kWwEwKYSr+apQC/oiAmwpPpR1Li+ciMssFFGY5imuvCT1KpN6XF6A6grTDYr7m2LOPVbhUNE1KP5
	0RlScvStL1AiwBhO7BiJkqlpHW0XhV0HzkmjAXz6DnPZsdjjBfcx68MPSY9vriugvtRsKOtrYbSld
	3s5RonwxPG7KxWeP8BCOajo0xUOqda9kwND43hqazVzxmuVxOkWBxZ86Tt8T4R774od0EXIbZQZKj
	mqHStHgKYL6FR7Xai1Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itf1e-0003vC-AE; Mon, 20 Jan 2020 21:56:02 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itf1W-0003uF-Hz
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 21:55:59 +0000
Received: by mail-pj1-x1041.google.com with SMTP id l35so386960pje.3
 for <kexec@lists.infradead.org>; Mon, 20 Jan 2020 13:55:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yz+RC08LXcOfqh007ME4eF+FjZEItC+jHzaYRevoImc=;
 b=hM2yFnlG+mX/xO5k3PyRGynk4RsP3WHWyFHM3oFVKoTwzv5zVOfHnS4ePT+xyCuDaM
 gj/Tjv+zB/VhLCk4AzOjK+Nz8HDCD5c33B+TRiuJFAIc/8RPo6CCxhbq12YOqID6cvWG
 GksiCOXgSojOnCOTJX4TZdhbsWMWdnnp/H92ZrzNEdjInfeORNj3klX/DtdqgSbgHRrR
 UTcyBQq1Kx7pUrlg3qQCekUmOVNUskDlnpfXWkEcuJfdDqnS2+XKTcVG6in2H4HOH/3u
 RfWjIc65RtZEhFhuZgqgk4JZt6LgQ1K4O1fq6uYPhOgzKhv2KvPs+ykau1AHuMbGLnn+
 41hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yz+RC08LXcOfqh007ME4eF+FjZEItC+jHzaYRevoImc=;
 b=PrEAY5DhQk+T00lzH8d1ndx/QXep6HW79VMX/14dMvR5u5Ikb7mrrHYCLqfXeyiVjh
 UksGdFaKdfkpYpJobhAe8uRH0VgpUyqYxSww9K4qcZN3RZEU4fLhoxVuTQbIsjc6oMi4
 diO6Vm4EVNHWzT3cvDUsk1HZyjsWgv2sQX+E2zBQndpFqMnzUbEzv7uUiuZCRHkk7rxU
 IJBdQSkL3mLEmOv9rEnct/tAvYmq2yty6fR21dIItV16ETbkhdit2y7CMiPg+os9vH4q
 e5aupIyTt3dtxj4MAtIle4wFB5ZGP8GT8X7jDxUEwsWZM8igKJw0RSZBLIyBt1fH9dKt
 fewg==
X-Gm-Message-State: APjAAAXyvXfGD+ouRJsjJXVF/amxSOBM6W6xYzeyCGQ+U5OPBead/HOR
 EC2HDHtJqAqSsjhnokiNGyzlHDoVjmVEYJq0Dmk=
X-Google-Smtp-Source: APXvYqwAnMrdxUof1ypYQ1jFBbFXx8VyehJMjwx/BCsTqeK5Gfkg8wWJe1FrprUGSneVGrFNyiUIwzDYiz40QVv6Uk0=
X-Received: by 2002:a17:902:a9c7:: with SMTP id
 b7mr1836647plr.255.1579557353372; 
 Mon, 20 Jan 2020 13:55:53 -0800 (PST)
MIME-Version: 1.0
References: <20161202195416.58953-1-andriy.shevchenko@linux.intel.com>
 <20161202195416.58953-3-andriy.shevchenko@linux.intel.com>
 <20161215122856.7d24b7a8@endymion>
 <20161216023213.GA4505@dhcp-128-65.nay.redhat.com>
 <1481890738.9552.70.camel@linux.intel.com> <20161216143330.69e9c8ee@endymion>
 <20161217105721.GB6922@dhcp-128-65.nay.redhat.com>
 <20200120121927.GJ32742@smile.fi.intel.com>
 <87a76i9ksr.fsf@x220.int.ebiederm.org> <20200120224204.4e5cc0df@endymion>
In-Reply-To: <20200120224204.4e5cc0df@endymion>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 20 Jan 2020 23:55:43 +0200
Message-ID: <CAHp75Veb02m3tU9tzZe912ZmX5mdaYkZ90DD67FVERJS15VsXw@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] firmware: dmi_scan: Pass dmi_entry_point to
 kexec'ed kernel
To: Jean Delvare <jdelvare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_135554_620148_9F456F73 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [andy.shevchenko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Matt Fleming <matt@codeblueprint.co.uk>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Dave Young <dyoung@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 11:44 PM Jean Delvare <jdelvare@suse.de> wrote:
>
> On Mon, 20 Jan 2020 10:04:04 -0600, Eric W. Biederman wrote:
> > Second.  I looked at your test results and they don't directly make
> > sense.  dmidecode bypasses the kernel completely or it did last time
> > I looked so I don't know why you would be using that to test if
> > something in the kernel is working.
>
> That must have been long ago. A recent version of dmidecode (>= 3.0)
> running on a recent kernel
> (>= d7f96f97c4031fa4ffdb7801f9aae23e96170a6f, v4.2) will read the DMI
> data from /sys/firmware/dmi/tables, so it is very much relying on the
> kernel doing the right thing. If not, it will still try to fallback to
> reading from /dev/mem directly on certain architectures. You can force
> that old method with --no-sysfs.
>
> Hope that helps,

I don't understand how it possible can help for in-kernel code, like
DMI quirks in a drivers.

-- 
With Best Regards,
Andy Shevchenko

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
