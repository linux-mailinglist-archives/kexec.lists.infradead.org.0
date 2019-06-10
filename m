Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A963B2DB
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 12:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ejfQSuys3C288N3LZ4qftPrFR0cWCoFWedz2rmJYY4E=; b=cl0WJesntJdMLp
	gIxusjUu5XMj2/AtKBDzR2eHUEhZXPkFDP9qcANndB6A3fQEceEOLcFTw9q9qp8AMSsr+Gya8e1Cz
	BktoxlkZKxjKBFHNRnC60zt8aY6ayqXNDFvhoIvA+HoKNtpVyaJlfuY94Yug+gAJBKpOeAr4Ofl78
	X2VjCH8v60UnZ+LA7qKOuCMBXKXi7nOj+/amNrQxLkfJHYYRm9mPfPeStqdVp1C7H0xNFJmVYB/I+
	FQVQChAwEQrPv61qms58/IktLEgW4E/ZFS9UX+r74RxvpdODAdORzfhbA5p77TaafBnLNq+tKDzgr
	0zNKrlmAMMfoBU9VBnTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haHOP-0000dq-62; Mon, 10 Jun 2019 10:19:09 +0000
Received: from mail-it1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haHOJ-0000Ye-QE
 for kexec@lists.infradead.org; Mon, 10 Jun 2019 10:19:05 +0000
Received: by mail-it1-f196.google.com with SMTP id j194so5402347ite.0
 for <kexec@lists.infradead.org>; Mon, 10 Jun 2019 03:19:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+s1qLXCvqwzbr22mFErQyyk+3j3cdDsCDDkT5MoVVBA=;
 b=I96xiO9lZAl+rSJSa3xRV0afHOLWhwdcNRQbY0NWZbfSZhxxB6ph9cwP5n5A0YFAaB
 43vabYrRgd+zyxe1v0XTmR+nB/YVjR+rSSjaGp8Jwgq6yoodgNAy2AQMMlhkmsEq0eqz
 BVD/2cTbRMGMS8UmslRwAIwjRbJ+wG5UbJJQI1AVsEHZjGx9SYF0Oa9PcEkHHEvoEn4S
 to5QEk2x7t7PqLxq8AP+e7Ruq4nu8FBarnqUq667DUiAx5EFKpFke/JAHJP4z9tEjxdS
 jjFXr3rBD7+bXJg+37bkWd2HPTL+0ha4v6ZGVObBTriKYg0fBJBsyoiMEScoSiExYLm6
 oV4g==
X-Gm-Message-State: APjAAAVFypWzXAeoH0W3AtU04N+1biCUqPzIbEeuQvDndFVxaCwJ7vBe
 iC3DkLr32jWjMUdzFEEWKDe67BANMrwsNv935NRjEA==
X-Google-Smtp-Source: APXvYqwIYVHEchoiN3iU8hLMeRqlH6jgxgWM3uWpVEsXU8i/JxzUlHw6l3phxSZG4PLaVsxPmDEWS3xensFf792xlg0=
X-Received: by 2002:a24:2e8c:: with SMTP id i134mr13166926ita.9.1560161941664; 
 Mon, 10 Jun 2019 03:19:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190610073617.19767-1-kasong@redhat.com>
 <20190610095150.GA5488@zn.tnic>
In-Reply-To: <20190610095150.GA5488@zn.tnic>
From: Kairui Song <kasong@redhat.com>
Date: Mon, 10 Jun 2019 18:18:50 +0800
Message-ID: <CACPcB9f-sussXaOuOau6=CD85pS2KhcsknpJDQH_aEkwvLfvVA@mail.gmail.com>
Subject: Re: [PATCH] x86/kexec: Add ACPI NVS region to the ident map
To: Borislav Petkov <bp@alien8.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_031903_874945_D2FCD845 
X-CRM114-Status: GOOD (  16.29  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: the arch/x86 maintainers <x86@kernel.org>, Baoquan He <bhe@redhat.com>,
 kexec@lists.infradead.org, Chao Fan <fanc.fnst@cn.fujitsu.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dirk van der Merwe <dirk.vandermerwe@netronome.com>,
 Junichi Nomura <j-nomura@ce.jp.nec.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 5:52 PM Borislav Petkov <bp@alien8.de> wrote:
>
> On Mon, Jun 10, 2019 at 03:36:17PM +0800, Kairui Song wrote:
> > With the recent addition of RSDP parsing in decompression stage, kexec
> > kernel now needs ACPI tables to be covered by the identity mapping.
> > And in commit 6bbeb276b71f ("x86/kexec: Add the EFI system tables and
> > ACPI tables to the ident map"), ACPI tables memory region was added to
> > the ident map.
> >
> > But on some machines, there is only ACPI NVS memory region, and the ACPI
> > tables is located in the NVS region instead. In such case second kernel
>
> *are* located - plural.
>
> > will still fail when trying to access ACPI tables.
> >
> > So, to fix the problem, add NVS memory region in the ident map as well.
> >
> > Fixes: 6bbeb276b71f ("x86/kexec: Add the EFI system tables and ACPI tables to the ident map")
> > Suggested-by: Junichi Nomura <j-nomura@ce.jp.nec.com>
> > Signed-off-by: Kairui Song <kasong@redhat.com>
> > ---
> >
> > Tested with my laptop and VM, on top of current tip:x86/boot.
>
> You tested this in a VM and not on the *actual* machine with the NVS
> region?
>
> This is a joke, right?
>

Hi Boris, unfortunately I don't have a real machine which only have
the NVS region.
I did fake the memmap to emulate such problem but can't really promise
this will fix the real case.
So just declare it won't break anything that is already working. And
I'm asking Junichi to have a try as he reported this issue on the
machines he has.

-- 
Best Regards,
Kairui Song

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
