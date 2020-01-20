Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C267142196
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 03:31:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MP4q+JMC3NVn1K3C0fySR7fIEitsddbdfEDCyywlii0=; b=l9DK20/gi1fY1l
	cr31JVm4IJ/LYSFOvHuH+DK72CIKEZVqUFjtHVAy/jt11dKwCSWwvpXLKsyB7lRdT+rK50IrkdJAZ
	9RC7habg1q6CKpzKYhY9qsqBIu0YjLYc9BP9KhwnVUpU0xG51xt7V3aTgz2hQCzXV8mGxWVd8rX5H
	OyZUflk/yvTH6OE1cQKl795CqaQ/toLQhonCSGfPnWQ8qievwRGY3Xd5ND7fqbjVIIVkpUB1M/Ied
	Lt1Jjkvd3UPyoUhCS7+zpaK41g9CArSxLWy4GDzrgChh+mVEjf7ZKN12GpXFyZa01yYBGEsMLfbcf
	jBrbUJUXFP++HvMHRMnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itMqq-0004pG-Bh; Mon, 20 Jan 2020 02:31:40 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itMqm-0004oz-T5
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 02:31:38 +0000
Received: by mail-il1-x143.google.com with SMTP id t8so26037599iln.4
 for <kexec@lists.infradead.org>; Sun, 19 Jan 2020 18:31:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rhqE69nZwP5dZRtp/CqlbuYKsjzzL/u6SP9zwdbqkcE=;
 b=ZTLI479Sv9fZOrvGoSvJCyXN0sub2XksXoZyFkJUHExH4YqEHkaVSZLmbCzd7Ib0JE
 FVA3cEYvN47eQ7v0jROT6pTJA+Uw/ogEBD7cV+wXUY++Hr4OSOy7xIaE4xypLcBGugDR
 NI3BoE/ECWOEczwpY6yRgmbMckyOY9oHkwQ0nzFdnWq3cLGWYB1YrPXBI6FpnBC8aTmJ
 wmSw0+ZpYgPgoD3xtH13pPbIbkYZe7mqmaHExZLBK334MBfQE0FFAnhx49iHtMyIWZMp
 wdyOv/5TY4GVzqcWQWjUfnEsmbf8r+HPHjwiMaLHv6Ow7pHOEZG45YRqrmMEeUyFIsyN
 9I7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rhqE69nZwP5dZRtp/CqlbuYKsjzzL/u6SP9zwdbqkcE=;
 b=niRAog2VXR4z3DEqM77B7+HVUnIYD8eYyAZsE6dN+CJtT3jcLMVEBjKG5kQEBEDOQs
 C7CNKyv8acif9GqE7P5FVwXTldYJf7Tj0gHCwg5vdCvKVA/qJ5iVMJOoFOnBE10BKwK1
 Ki77fIdvx2RzcqZv18pRK70vpe6EXxFRBuWN4GVVK7Qh0pC60mryS02egDN5QZjqc4mK
 lp/ybjtGoOCQvEPQGoIewzuAMsXVhPHW/hqoSMtkeRTO3RId/3NVRFbFVScxfG+hhmM4
 zDX5LHo4Ef+r5P2x2Fs6SH9PCQhaE1zJSW7lyqaFfBtclmF7oVnGg9igMx+lW6TeZYhJ
 Bv5A==
X-Gm-Message-State: APjAAAX12Og7IG9pur91zqHsTaoZB/D6y1sRzOd7f5/gAWXzDQVEKgvJ
 BSF8EUtVLGBO0/EbcCAVcSIFmATqVYMyH8rlEQ==
X-Google-Smtp-Source: APXvYqyDCCUkPlL+0BHI+Yb904juhss9EeJECdWiF6QyvJbfGhGoAoF07RqNeqXiKjrQWJy88G+r62LEUC1KRKFiXMY=
X-Received: by 2002:a92:dc91:: with SMTP id c17mr9477144iln.78.1579487495123; 
 Sun, 19 Jan 2020 18:31:35 -0800 (PST)
MIME-Version: 1.0
References: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
 <20200116075000.GM19428@dhcp22.suse.cz>
 <CAFgQCTuG6K3nbKDjp3SJFLNqsx2gaC_TGWcgL0vzDcD_Gv7VdA@mail.gmail.com>
 <CAPcyv4iOQHrZ1c13vNN_UqVyKu5O5zqrMvdMHbLHmCjPW6a=Pw@mail.gmail.com>
 <20200117074746.GF19428@dhcp22.suse.cz>
 <CAFgQCTsT0dFEOn75XoJf-KUApy+Mz7wDSoZsdd=GwkbGFPu-Bw@mail.gmail.com>
 <e81efb3d-254b-9858-443e-234d427d5ab8@redhat.com>
In-Reply-To: <e81efb3d-254b-9858-443e-234d427d5ab8@redhat.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Mon, 20 Jan 2020 10:31:24 +0800
Message-ID: <CAFgQCTuxk1EgCix9WVv8w9EzTrKtUOHmnag_ihVaW7VYo=2fbQ@mail.gmail.com>
Subject: Re: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
To: David Hildenbrand <david@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_183136_964172_A7FD10A0 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michal Hocko <mhocko@suse.com>,
 Kexec Mailing List <kexec@lists.infradead.org>, Linux-MM <linux-mm@kvack.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 5:53 PM David Hildenbrand <david@redhat.com> wrote:
>
[...]
> >> Thanks for the confirmation. It would be great to have this in the
> >> changelog.
> > Should I post V2 with this commit log?
> >
> > Thanks,
> > Pingfan
> >
>
> Id' say yes, and maybe also add some details why this makes makedumpfile
> bail out now, so people looking at this commit only know what's happening.
OK, thanks for the suggestion.

I have sent another patch for makedumpfile and cc you.

Thanks,
Pingfan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
