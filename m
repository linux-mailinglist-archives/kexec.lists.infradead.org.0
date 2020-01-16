Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 023FC13D2C2
	for <lists+kexec@lfdr.de>; Thu, 16 Jan 2020 04:35:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TyqvW/PMcSpcE034UNUGj3RuWFXnTCDOhKFg7NSLdUk=; b=IdpAFY0B+hzaEI
	MD6KH7+M8oVjdDHVgtB25wlM7XQAJsLfV70PP7nsjtIOLdt+onHMhkuINkCSOUlJe1SYDi3B6ayqM
	Jjjv23tiOnhykJfkMgGCtyqLWqwfHxPV9loCt1t+m8Sxx0i2Ylz+AO8YpGlnn5TgmEIZLyP7kqBMM
	VIKk6YyyyI38ujKaFsO9Lz1IRJe7yXrJ68TROWsFWDF6SHZdJ9oaRa6/FJeuJRaItKPO2eNaEfexS
	SsnQJOjSek6nidOA4zo7PpRlc6CDaIWtwMdCwvAjPDywPgg33ZY+xYM48GtfH9ZK6Cex+iQX/ti/h
	hes4Kqk4Zh6KPoLClJmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irvvy-0001Kn-P6; Thu, 16 Jan 2020 03:35:02 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irvvv-0001KC-9y
 for kexec@lists.infradead.org; Thu, 16 Jan 2020 03:35:00 +0000
Received: by mail-io1-xd43.google.com with SMTP id h8so20242953iob.2
 for <kexec@lists.infradead.org>; Wed, 15 Jan 2020 19:34:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sLuizv+Yo7c4/ciCV32rFJEwH3aLXYnRe90Mjxc/HW4=;
 b=GNLnRQ19jfiu9H2kHzCcdvzioqwHvQ5h+dUb/RkpLXTG4nTTyFImnBD5w3joOMA72V
 LWh+vqcTdUi4v5u+yGCBB4z+iBvXawiyzsBVYVkrtfLLehps1Mr50mUZd+2t17mvHpaR
 rxfsdnqHda7aELz8CoyWfGnnb59dqaD10EfAx03FRQk7FHdGc4hu0qHBXDInVLa8vckH
 9DAHWf6WhseVuIL2UWa6OFmwzB0/GiXXcAALDSiy9Qy96fZlJoXOQrDEvABl2CgyCRAS
 sgwF6YaAsAEX1L83d9D59aGJivoWXN1OEyGjXV1g9xwkSk7VRc1oQoqLBdnj9zFjz1o4
 Rrew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sLuizv+Yo7c4/ciCV32rFJEwH3aLXYnRe90Mjxc/HW4=;
 b=lInK3rfdhwDwi6DPz3Vmaaf9vtVb72ERedn+YDf4fkvEx7nWA3jzu/e9OGNSJZ2Z/0
 92+eiR62ctIpN9hdCP0lwCaDhWEAMhEwm7pghX37TIyJQ4lma+wjsXGJO5hCJ4MvqfmS
 o6a/RLaf0DOPVkJWZ1zj16Mzdycr7LZgcKbZKTUSMiOYUERDWEBYrKuZ2fZo6/C6fAJA
 2fsC+JHk+836rWdl6UWiHrJrmTlUAQBt9YDzI0ZI0RKHa/83DPQOytbmVmgUzqtgA7+Z
 SsGIFqT/GSeAIEi1gdsV+wB3AEfQPeuasIFXMuAwml2/YdWI7mO5H+e1+zDZomow40Az
 +EJw==
X-Gm-Message-State: APjAAAVXyO0iXhmOGZQ0TkGoDDNv94lA+u33xDrpXAkCfjQA32G32w6b
 QYaiR4mVtQs8yOuzNmlBL6HBPCIetJjZO2xGUQ==
X-Google-Smtp-Source: APXvYqyEOJeMyBCkjz2z1kMp6gMGpLVTWlVegN8vz1yTBS4evIQREvRP/Bx9BcTBLAh14ZCVuZ2hgmSdM1zzMfV6kv0=
X-Received: by 2002:a5d:970e:: with SMTP id h14mr17270374iol.201.1579145698125; 
 Wed, 15 Jan 2020 19:34:58 -0800 (PST)
MIME-Version: 1.0
References: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
 <F12319DE-7ECB-42E5-AF4C-FEFC78B7DAB1@lca.pw>
In-Reply-To: <F12319DE-7ECB-42E5-AF4C-FEFC78B7DAB1@lca.pw>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Thu, 16 Jan 2020 11:34:47 +0800
Message-ID: <CAFgQCTs0gFNH+-GXsEtOKqd10ASf8JHhiZOPPCM7tFebc+9=EA@mail.gmail.com>
Subject: Re: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
To: Qian Cai <cai@lca.pw>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_193459_347297_5D87C1E4 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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

On Thu, Jan 16, 2020 at 11:18 AM Qian Cai <cai@lca.pw> wrote:
>
>
>
> > On Jan 15, 2020, at 10:01 PM, Pingfan Liu <kernelfans@gmail.com> wrote:
> >
> > When fully deactivated, it is meaningless to keep the value of a section's
> > mem_map. And its mem_map will be reassigned during re-added.
> >
> > Beside this, it breaks the user space tool "makedumpfile", which makes
> > assumption that a hot-removed section having mem_map as NULL.
>
> Well, tools like makedumpfile and the crash utility always has to copy with

                            ^^^ cope ?
> low kernel implementation details changes like this. Why is it different this time?
Yeah, there are two direction. But as the first argument, it is
meaningless to keep the value.

Thanks,
Pingfan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
