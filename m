Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 334501403E1
	for <lists+kexec@lfdr.de>; Fri, 17 Jan 2020 07:20:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j73RDgwjL5vbx+d6+Uo85BlWM9rVAFC33ukeD3F9jDc=; b=RMzNuQu/hGkyHj
	7gmoD6E+EAVtmHL3zJCQW0k80whz71Jq/dSYAGTG0C4/uOH/kKnTBcN3fzHTX5AqSgjtoeJAf8OAb
	pJXE11BInIytzRRnEsPfAdIrhMY43cQrThKTpAvK5Ansh5esXcCSo8ZSjW2yokNldC33eLRu/e79t
	7wvSaAc7hCI/ye3VE3iJtWpwZh1RK69phWzB0XgxscEZrJn/xS8pV0DIkYfESldQwnGnRPJp3qK7A
	rLLbRskkQ6msVeaakSoZ/zSMgmN4zGFzbakE1YZGgeUvqc9hkvdXIO9x1FtqPrTepsuvzgq7XpF1W
	ys1S0b8kMdf2fQmM7siQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isKzl-0000Uk-Bq; Fri, 17 Jan 2020 06:20:37 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isKzd-0000Tj-Jv
 for kexec@lists.infradead.org; Fri, 17 Jan 2020 06:20:35 +0000
Received: by mail-io1-xd44.google.com with SMTP id z8so24781207ioh.0
 for <kexec@lists.infradead.org>; Thu, 16 Jan 2020 22:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sQWiLTE2DvXDXh9g6uQSeddAz6FsHc5UfztEn88LPo8=;
 b=YvXQjdwCH/CiaIheF8sV0fCvQuZ3pg1pESnfw9J/g5zJEaA/Bzq790dVANG+9EtB0l
 X2+VxwVpBRkTi7hJz9RkaV6OQk8pio1U7MSj79RaK0lvyHq3CCzxI4qxIcndOAW97lG4
 Xbb1bXx6d6/pciwaGfj+SCYRics2/b+lz9cwV1EGQdVVlz58yTdPz9ezVtfU1QshHblK
 v71qNlszYAj+BowZ3uqTIJn/782jbLmFDPaC8w64zlJwCtvPLfW9HZyESK01Q1lr70yQ
 gjXLSSC/mRFx2CL0elpV71+WUI2LBov/0O5D8ZB25SesbWeF4DxZl3jq/MPwMZu2R4mp
 VVfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sQWiLTE2DvXDXh9g6uQSeddAz6FsHc5UfztEn88LPo8=;
 b=JCNdCFlbTU7ivcM0yWBVvcKh+SYdfmZLhtmmiHTwxBo7pps8dReODJ4As1Y8nzCNcy
 j8zs9PUr255oWJG2yC5uC+Ny6xpNAo56jVU/AAueiaVDScHRYfoUBbW4KGeVAQmS4o0o
 k5ytdWb/E7Bgz30agyaMeyNqZxE0LAGatnX5ivoeQfufYKSTgznX6m1toE97P3yTZiku
 AY3mKdZ7QBf3wZ5Haaasg8thzNeefYyAyDfUhTbqY9ZAjfeENVUSq2jXtV+fLQk8MvVd
 xjkmq4MOL3t7gr6JTR52Z6plCCnX7+3HOdLmjjBeXvp+8oXdJa+8XTcaeLuZsUN05jmb
 lwsA==
X-Gm-Message-State: APjAAAW5QMDqVx1F9Zp4GeGXjF743bmOCt5qwgoPTj/1hlcD45BBEVyV
 dVT+8knI2mVdLtmIIYIDrcrN5x6P2Ny0coD/Jg==
X-Google-Smtp-Source: APXvYqxM9ebn9rRNIE6/F7ya6utOSblLaOkfUBOLv4AbaQSaavkDJBfBLVPEhfeJ/yqOLLhxcKnSszLkBsIVF1Q7yBk=
X-Received: by 2002:a5d:9d4d:: with SMTP id k13mr27266285iok.15.1579242028627; 
 Thu, 16 Jan 2020 22:20:28 -0800 (PST)
MIME-Version: 1.0
References: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
 <97ab281f-d038-d40c-648a-e0085a906dcf@redhat.com>
 <6cfd834a-72cc-656a-3954-40b37db5a66f@redhat.com>
 <20200116082451.GC26758@MiWiFi-R3L-srv>
In-Reply-To: <20200116082451.GC26758@MiWiFi-R3L-srv>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Fri, 17 Jan 2020 14:20:17 +0800
Message-ID: <CAFgQCTtZT8QFtP0_-g0br6pv7ZqF1y-S_f+0tv_iqHuYyn9VeA@mail.gmail.com>
Subject: Re: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
To: Baoquan He <bhe@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_222029_656334_2C242778 
X-CRM114-Status: GOOD (  17.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 David Hildenbrand <david@redhat.com>, kexec@lists.infradead.org,
 Michal Hocko <mhocko@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 4:25 PM Baoquan He <bhe@redhat.com> wrote:
>
> On 01/16/20 at 09:14am, David Hildenbrand wrote:
> > On 16.01.20 09:06, David Hildenbrand wrote:
> > > On 16.01.20 04:01, Pingfan Liu wrote:
> > >> When fully deactivated, it is meaningless to keep the value of a section's
> > >> mem_map. And its mem_map will be reassigned during re-added.
> > >>
> > >> Beside this, it breaks the user space tool "makedumpfile", which makes
> > >> assumption that a hot-removed section having mem_map as NULL.
> > >>
> > >> The bug can be reproduced on IBM POWERVM by "drmgr -c mem -r -q 5" ,
> > >> trigger a crash, and save vmcore by makedumpfile
> > >
> > > Are you using an up-to-date makedumfile and did kdump.service properly
> > > get reloaded on the udev events? I remember that this works.
> > >
> > > makedumpfile will not dump memory sections that a) are not marked
> > > offline (SECTION_IS_ONLINE) - after offlining b) are not part of an
> > > iomem resource - after memory unplug.
>
> Makedumpfile seems to only check SECTION_MARKED_PRESENT. Then the NULL
> memmap will fail vmcore dumping, I guess.
makedumpfile.c / validate_mem_section() has some trick, so it will not fail.
>
> > >
> > >
> > > The current code makes sure that sparse_decode_mem_map() will return NULL.
> > >
> >
> > ... but it's only used at this very place. I think we should add a
> > Fixes: tag, although this might be fixed as well in makedumpfile (so
> > people are aware that patch broke something)
>
> Agree, it's worth fixing it too in makedumpfile side to enhance.
>
Yeah, I also agree :)

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
