Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D60F1403E0
	for <lists+kexec@lfdr.de>; Fri, 17 Jan 2020 07:19:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GTGXom4u0KnIPDWaPo83IhACChk3lbPF1hz2n8URUKw=; b=tM2DQoTcxfMaGX
	AzjOkPZsj+K3yJJh1SoTHrMfswqLXv1Xxey7u7OC2/Roe0R4JSpB3A8ifmTefGxYR2R6cksGXvok2
	4HLMZAdKLHUnwtS9txBlJmOD84leWzO25gAdVugeBs7Vo9V8jcXCE2DGi/mA5GQLRNVWLn8yZnWBn
	tHqfN32aXQbxe1WCFvA3mhballDZXP3XBfeGy8Ik1kpg+gwkgXgGHbMY0DtODxfdlYV2W42aD/pFW
	C2iaSn0KOHAQTuWdBkGeoUJhy9QlkYFCFdqj6y+K4+tjU3Y5cIMtFrtUgJO/EPuJtUAv032IxQgkd
	cI/akdY4Js2UKreOXpBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isKyA-0007NO-7P; Fri, 17 Jan 2020 06:18:58 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isKy5-0007Mr-Rw
 for kexec@lists.infradead.org; Fri, 17 Jan 2020 06:18:56 +0000
Received: by mail-io1-xd43.google.com with SMTP id m25so9166204ioo.8
 for <kexec@lists.infradead.org>; Thu, 16 Jan 2020 22:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+sWY+6H6Ge3PRBQAoLW7o/treDi43h4gtoyg3hrHzVo=;
 b=uO+XXgKfTX0JwNO7xbS+W8ikjyr5Yb4qw7ia0X6n8mANREZjh7TxPcy3W+3wjMk4BG
 B3gQWzef8MZvjtmx5+WZa/8wKbuPkuyYk6USe1sCo7Rn4GD1jMgVh/O1MVxOKJhUMdyT
 AhWZB3Y9hlOZuMJMufCzvo/SR+u15hf+gUUXxjBZEkHRM9EfGmwHlKh5W+/ycVOfeFOo
 AzHea2vWsZzbRDptajDPIw8j/ssaM+vEreURzkkP/efR48o2aa9X3c4Pvsljtar+It/a
 YOAW75rxGke2iSUaDZrL12FAk4vo7iiFx5cRbQKM68/YQa59UsyHQHrL+suMObbAzN9i
 6SFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+sWY+6H6Ge3PRBQAoLW7o/treDi43h4gtoyg3hrHzVo=;
 b=gOHNdC0j6XNy6+YcaZU5VWth5iy0lSDA/l9ocMruu94Dc+w49xOMbc6e9ADdpjV/n3
 xWdkL+2DbtcyWs6k6C1kSBhrHhqYVl0ekIDO24gh1j/3AXAIXY7x/mdb9X17QsoyPdYb
 Dd6Y7mPA2Kmz95tJ8LO2Q8KQYrKwJs6jMlNbCgzVkXwEwxIRc6CbViNMQZDmyig/vyn+
 hipOlelCz8ftkTd9L2gCCnV9qWF+0ud/xA1+yc9zA2Igr5sTtfp+e2aLN/XFRVJ7rVtr
 scOtRteCUtNUzj9Mo6/yKoeLXmEhVJuNRCtcDVs5DWfbyTBLcgJANFAd09eJlaL7m5Z/
 68MA==
X-Gm-Message-State: APjAAAX8QTg8S2Em9JvGXu9T+ueF1yjQzyZgtztpp+IK1K54kP0w/XUS
 eQpJYwx0/HZWS6MJZk2HweOaZZ500aeKmTOjPg==
X-Google-Smtp-Source: APXvYqxzbPfK+SOCUmaOe4Dusl/EvYz97eYGp2LEIDli1M4csp9A0UpImGieN24qOqqA1Swr32+ZtRMccDk4Yl10OOw=
X-Received: by 2002:a6b:7e48:: with SMTP id k8mr26934888ioq.12.1579241931122; 
 Thu, 16 Jan 2020 22:18:51 -0800 (PST)
MIME-Version: 1.0
References: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
 <97ab281f-d038-d40c-648a-e0085a906dcf@redhat.com>
In-Reply-To: <97ab281f-d038-d40c-648a-e0085a906dcf@redhat.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Fri, 17 Jan 2020 14:18:40 +0800
Message-ID: <CAFgQCTs2i-4XtqJQfmsXVUGxMe+=PzQCwkbAACMw7gj3=qxqtQ@mail.gmail.com>
Subject: Re: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
To: David Hildenbrand <david@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_221853_929072_A8A92D48 
X-CRM114-Status: GOOD (  14.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>, kexec@lists.infradead.org,
 Michal Hocko <mhocko@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 4:06 PM David Hildenbrand <david@redhat.com> wrote:
>
> On 16.01.20 04:01, Pingfan Liu wrote:
> > When fully deactivated, it is meaningless to keep the value of a section's
> > mem_map. And its mem_map will be reassigned during re-added.
> >
> > Beside this, it breaks the user space tool "makedumpfile", which makes
> > assumption that a hot-removed section having mem_map as NULL.
> >
> > The bug can be reproduced on IBM POWERVM by "drmgr -c mem -r -q 5" ,
> > trigger a crash, and save vmcore by makedumpfile
>
> Are you using an up-to-date makedumfile and did kdump.service properly
> get reloaded on the udev events? I remember that this works.
I tried to get a machine and double-check it. The latest devel branch
of makedumpfile can not work.
>
> makedumpfile will not dump memory sections that a) are not marked
> offline (SECTION_IS_ONLINE) - after offlining b) are not part of an
> iomem resource - after memory unplug.
I think the current implementation of makedumpfile should improve the
handling process.

And my primary argument for this patch is a pattern like alloc/free.
And when fully deactivated, it is meaningless to keep the section
start pfn info
>
>
> The current code makes sure that sparse_decode_mem_map() will return NULL.
Do you mean the code in makedumpfile?  If yes, it can. But
makedumpfile related code has some bug, and should be improved to
utilize this function.

Thanks,
Pingfan
>
> --
> Thanks,
>
> David / dhildenb
>

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
