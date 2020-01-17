Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 931BA1406D9
	for <lists+kexec@lfdr.de>; Fri, 17 Jan 2020 10:50:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RmyDUj3GdX4A09wME/ZoQgGpP5xRNmlgrbUsShb1Q0=; b=JwXz1+XB9byoz2
	88wFDGCIwECx7uxgrM016SCeUFM+F9sUoqIRxxvkv2E1bLguaHKxMOqEMkzTWb+uJNnHCNf8uW4Ic
	a8ABCpVJoj14g9Rqd8uwoGdGHijVsvuIJsa4o+dAvej5OSV+XFBx6oEawO+iUjri8PmFgd2Mpmmcj
	rJqgVSU8ZBNEfLXVzV0VbULWLZZawsktxGsip32x5EsJ8UhMZozZ2zSyUWnEnH1Vkp2sX3Ca7h50g
	yAw6TXevXCNYXZkVuLfpd7b9vm+hjj49PWpvBZIZc1EClC3SWD68VGB9jAFwKmYUw+OOnqpI9349o
	ekuZbXG25GGs2pxjmJow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isOGO-0004Fx-4m; Fri, 17 Jan 2020 09:50:00 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOGE-0004Ez-Vk
 for kexec@lists.infradead.org; Fri, 17 Jan 2020 09:49:56 +0000
Received: by mail-io1-xd44.google.com with SMTP id h8so25351062iob.2
 for <kexec@lists.infradead.org>; Fri, 17 Jan 2020 01:49:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m/iZn/9BSQqGd5e2yeTJ7gLwUn2LDa69ozHI95trysQ=;
 b=VP/IqiZbaCttiLBOghjGul8sqaQROlZhSqsHV6evcPJ1Qd56nXV5mKY4wAqRzkZUcZ
 xPxoggJUFq68LEHgcg2qWS84+8wdtNUuMPnNWte71tcs2jxapLOpsPuXP1tVrN0xe5SL
 5mBcqCvZBf7vjGHHJpc4AWBrh23UFxs66T8ppsotn/LpQ+XBZBAiChFZQ68q/ImXP2xh
 fT7Sk8COj+fv9iT7whzDIwrbQm32sxKiJF9Sm5Ep3xg4av1MCTMZdAFZzXUOJTnlLS/R
 yu76ndm+e34CVYsLI7UQHK/epa0Snr66xOrkn+sImRa4A0csMNYPNIh19clnLCqO9GRQ
 mf9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m/iZn/9BSQqGd5e2yeTJ7gLwUn2LDa69ozHI95trysQ=;
 b=NbU1D4Yk0Ejc9lV3ZpuOeqy0j+K4znLO7rG6NjfGZyiwB8uaGwJrbWII4ju4Y3NV3Q
 tsnn6pxqjZzAP7lnMrFFPpYUgk83f5AXiJBErcSXyY6HrSqMjohRqNG05jDNEVIL5qG2
 3zPX+CSFrSLh7aUvcg6dM13HGprOMFDL+4fBD+uqSARglCSh30NLZvYEQJkuRVd0Rtvd
 Iex9UjVwUcilFwFUCTPxp7zWVSAcF+pQj+4hQI0v+pN9jzVnve3RCXwoSJMYQZQO01+x
 w4bz0bkowvzP25AQevcbkcTLbXCzCi00JFs1Hlgy/u7tfGLTU45VzSI52Kw1reogtgZx
 2y1A==
X-Gm-Message-State: APjAAAUL29x12sSAwI7Gm3gq/+YCPti+1xLQbH7jdnAf7cBjxulc4WxV
 M4Ps9A4lyTw78eWyVZ0TlTGwiLMF9FRbgn7RSQ==
X-Google-Smtp-Source: APXvYqzQmAWw5bbh8bzvzgn4lRJGoXpwUQyoQO7yEDZzAyBu9XPyrTuO9JIG2Z3uBh79Tj4kj3mqumbnFCOxo4p4tlI=
X-Received: by 2002:a5e:c244:: with SMTP id w4mr26067771iop.161.1579254589678; 
 Fri, 17 Jan 2020 01:49:49 -0800 (PST)
MIME-Version: 1.0
References: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
 <20200116075000.GM19428@dhcp22.suse.cz>
 <CAFgQCTuG6K3nbKDjp3SJFLNqsx2gaC_TGWcgL0vzDcD_Gv7VdA@mail.gmail.com>
 <CAPcyv4iOQHrZ1c13vNN_UqVyKu5O5zqrMvdMHbLHmCjPW6a=Pw@mail.gmail.com>
 <20200117074746.GF19428@dhcp22.suse.cz>
In-Reply-To: <20200117074746.GF19428@dhcp22.suse.cz>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Fri, 17 Jan 2020 17:49:38 +0800
Message-ID: <CAFgQCTsT0dFEOn75XoJf-KUApy+Mz7wDSoZsdd=GwkbGFPu-Bw@mail.gmail.com>
Subject: Re: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
To: Michal Hocko <mhocko@suse.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_014951_046580_B39A7F82 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kernelfans[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 David Hildenbrand <david@redhat.com>,
 Kexec Mailing List <kexec@lists.infradead.org>, Linux-MM <linux-mm@kvack.org>,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 3:47 PM Michal Hocko <mhocko@suse.com> wrote:
>
> On Thu 16-01-20 23:14:02, Dan Williams wrote:
> > On Thu, Jan 16, 2020 at 10:23 PM Pingfan Liu <kernelfans@gmail.com> wrote:
> > >
> > > On Thu, Jan 16, 2020 at 3:50 PM Michal Hocko <mhocko@suse.com> wrote:
> > > >
> > > > On Thu 16-01-20 11:01:08, Pingfan Liu wrote:
> > > > > When fully deactivated, it is meaningless to keep the value of a section's
> > > > > mem_map. And its mem_map will be reassigned during re-added.
> > > > >
> > > > > Beside this, it breaks the user space tool "makedumpfile", which makes
> > > > > assumption that a hot-removed section having mem_map as NULL.
> > > >
> > > > We used to do that before ba72b4c8cf60 ("mm/sparsemem: support
> > > > sub-section hotplug"). Dan was this an intentional change?
> > > I do not know the purpose of this. But the change just leave section
> > > start pfn in fully deactivated section_mem_map, and not used any more.
> >
> > Not intentional, IIRC at the time I had convinced myself that the
> > value would always be translated by sparse_decode_mem_map(), so I
> > thought it could be hiding NULL de-references.  I don't see any harm
> > in the patch.
>
> Thanks for the confirmation. It would be great to have this in the
> changelog.
Should I post V2 with this commit log?

Thanks,
Pingfan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
