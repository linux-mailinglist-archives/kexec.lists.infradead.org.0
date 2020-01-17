Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C6D140460
	for <lists+kexec@lfdr.de>; Fri, 17 Jan 2020 08:14:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rUOgUI8fxFfI7vbJ20kwpWN5CcCrz1mMKEOmn/hLbtQ=; b=rBimqZlazvuMCl
	J5Z+Q+FZwvHTycAsZEJYsQN8/jx+lP53qqdMMBjPjp5G1c+GlZQNivm+zz4YcO3j2o1nhxpMTRW+a
	o6HvwYjeWbVDfDr+fMp8nRD+4NjjEwofu3dwz7BNVFo4hR2XGlb8gaXmo6RkU+KUX4Ps/ZfDQ+kxH
	jm32D5n1fBECAosb0B4WGvGILEmzUsGlDycolWbKS6BMy8cHuaLwLZxjzVgzq8BwGhA2gC/Z8v2yM
	7rOMOsdtnwJM2ME/1SmsVyI7WKfOnS8kMq4rTkl3UyRkKi1WUOamUu/PtOupLiZ6ziPm1U4Ihms3h
	P+07GDWPZSCcjq7LVFDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isLpm-0005Kc-Aa; Fri, 17 Jan 2020 07:14:22 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isLpf-0005JC-L3
 for kexec@lists.infradead.org; Fri, 17 Jan 2020 07:14:20 +0000
Received: by mail-oi1-x244.google.com with SMTP id a67so21338931oib.6
 for <kexec@lists.infradead.org>; Thu, 16 Jan 2020 23:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Eh95S1MlzTY8i0LF9De8ZEjwbrXfDSgRBgCgMZN1jc=;
 b=PtdK7itThPrlobYA0Dg2bXwzk5LU9ZuTVVxf8p129PJdHS/bL6lppGsoulmvj4PW+u
 U7lB5oEEvp43/osZ4EUr7/GwRFdvzxlVPEsw6Ww+iqgx7vEgpiASbAAqTR8K1UJQqnvS
 KJ1zjVijBAnIIWMqFCudydgUWvEYu42RFRO+xD1OLnQi/8IhTYx5XHwto8kir+4L4ubc
 +8gQQz9CluoBDQh/bvfLWvXWSHGwqHTMVovCT1LLSSoe5wQjQuhkED+mJUYNuJ3icdFr
 glAjHnA2FfhSY1thq9lldApViWPBqUOTBdOS+fkrB4dJDXH/J/CNciOmqLUB2zVM1byO
 upYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Eh95S1MlzTY8i0LF9De8ZEjwbrXfDSgRBgCgMZN1jc=;
 b=bbVL+aJ8+TykwXIDZgAL+GalY89KkBnW9wi2+b1Ys6PZyh2Q3OOmhfpNebxwzmXRME
 Dgt1B8/bidYHOJnuPh/iEQc/ElqaCJ39R8zF7aB4VE1oFP3dX05cXCHmd66RJ66md0Q3
 KaAYQZ2gEdrVWo2fTvIucO4IuvVHlRL00AiMuOW7EQioNzaSkGRlHji/ln3GzjQU5RsM
 5Tk0JFloxTSwBvxom7G3n2ZranX6b4q5zqjT0CBmvMVzuS5WYYxSaIKdrB7lURZ8tSbQ
 mEokXp1GO0446z/4iGikBm00WCECZxCQphLoRD2mbdYpJQNWoiUCeadOf3FfJnrvjWMM
 a1WQ==
X-Gm-Message-State: APjAAAVyk1rHCSoZ834SK/UCsvV6kDfIr/2xlQRtEe9nd0rh78Um+Af7
 Is0osFa8YbGoAtZ/bLQiXHzmsTDk5T9ZqRpVg8dd4RVA
X-Google-Smtp-Source: APXvYqypKTw4sEA4efwNVMpM3vKeTNYiY2iTt/kIwA5yao8p911aPKCxKbPynaSkrtbhAJ3DBWjUon9irr6kTISakhU=
X-Received: by 2002:aca:1103:: with SMTP id 3mr2324674oir.70.1579245253453;
 Thu, 16 Jan 2020 23:14:13 -0800 (PST)
MIME-Version: 1.0
References: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
 <20200116075000.GM19428@dhcp22.suse.cz>
 <CAFgQCTuG6K3nbKDjp3SJFLNqsx2gaC_TGWcgL0vzDcD_Gv7VdA@mail.gmail.com>
In-Reply-To: <CAFgQCTuG6K3nbKDjp3SJFLNqsx2gaC_TGWcgL0vzDcD_Gv7VdA@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Thu, 16 Jan 2020 23:14:02 -0800
Message-ID: <CAPcyv4iOQHrZ1c13vNN_UqVyKu5O5zqrMvdMHbLHmCjPW6a=Pw@mail.gmail.com>
Subject: Re: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
To: Pingfan Liu <kernelfans@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_231415_738889_33CE1863 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Michal Hocko <mhocko@suse.com>, David Hildenbrand <david@redhat.com>,
 Kexec Mailing List <kexec@lists.infradead.org>, Linux-MM <linux-mm@kvack.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 Andrew Morton <akpm@linux-foundation.org>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Jan 16, 2020 at 10:23 PM Pingfan Liu <kernelfans@gmail.com> wrote:
>
> On Thu, Jan 16, 2020 at 3:50 PM Michal Hocko <mhocko@suse.com> wrote:
> >
> > On Thu 16-01-20 11:01:08, Pingfan Liu wrote:
> > > When fully deactivated, it is meaningless to keep the value of a section's
> > > mem_map. And its mem_map will be reassigned during re-added.
> > >
> > > Beside this, it breaks the user space tool "makedumpfile", which makes
> > > assumption that a hot-removed section having mem_map as NULL.
> >
> > We used to do that before ba72b4c8cf60 ("mm/sparsemem: support
> > sub-section hotplug"). Dan was this an intentional change?
> I do not know the purpose of this. But the change just leave section
> start pfn in fully deactivated section_mem_map, and not used any more.

Not intentional, IIRC at the time I had convinced myself that the
value would always be translated by sparse_decode_mem_map(), so I
thought it could be hiding NULL de-references.  I don't see any harm
in the patch.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
