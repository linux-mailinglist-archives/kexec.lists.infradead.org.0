Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E594EFE9
	for <lists+kexec@lfdr.de>; Fri, 21 Jun 2019 22:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rpbx4c51vcgxkdmPj266SD6V9/xBmQU0o/ZsBe2FgQU=; b=cCkA4tZtVpkyVu
	as/X46uvludRMdaThfL2TDEhApn+P49TLKRPesmnRIcMHidbW1w93oG+7Mtcg5ELvnGwlPdqMjyXq
	dvsDvtfbZ/JY/rvz5WB4pClmyCMinaHVA8mnqPU4hWB7GSp7gCRzrPxaeTTJoX2uCVKoykBYxlPmW
	vgOWFwS2mHek6EvTF4DQWAkWOiTqiqFoUicAhSpjZOAfHasfek5skYAzYubgPLmhClj2Zh9zNSexL
	KVn2HrEZccxlImbJ4gnHDVsUizLKr1NtJOz0esVrBV4c6DNGWVElBf0o7svkJ1TrR3NVk0OQHwx0m
	cEw8iYsmi6e2Bxo0zWqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hePwH-0004g0-Nz; Fri, 21 Jun 2019 20:15:13 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hePwD-0004Db-WE
 for kexec@lists.infradead.org; Fri, 21 Jun 2019 20:15:11 +0000
Received: by mail-io1-xd42.google.com with SMTP id u19so1459282ior.9
 for <kexec@lists.infradead.org>; Fri, 21 Jun 2019 13:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AzDlMHYKYdPbav08td6cmrqKH87QGtCYlyXDXXOTgFk=;
 b=tQXWoCT7u5RD2XblRn/rEN/phOj7fWsEmz5uMzn5kiCQyibx9ujzvtEvgK6iZ8pwsm
 mf7OLToqshhDbzAdX8fnx8gG5wXPsbUk2uRMl5dBsMdWEHD5Z+LF4KSJeakOOmCxbyZP
 C6E9MxZMnuitfO1C+d0TwHhQljoRubGQLCDZYiIC3Ru4fpIkiiQkIkjVkjh6d65rgarv
 ZRAFTDUIefuKONBucRjVJjnw6fjoaa2gcyJQ0Coo8bG0g6t7lRYItK9Bw4q0CDU0gNf4
 Zsbfow4kziPBKI25UKNcswXRd9uGeYPOmcGp6uvJ5+a1qIP4KwCzcIEieVzY6BjgRFNo
 86nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AzDlMHYKYdPbav08td6cmrqKH87QGtCYlyXDXXOTgFk=;
 b=EZ2WEp71FeI/PzRXcmwHrDUEXD9yRAaN+IQ938Pk5i0mjwGUSEHp47KVxFCFLxLJ1/
 ETb9eF73HbYzMNumT1NrXbjTo2v8eJaAgXrodhohIVdswr/bz5Bo84P6nNh8mk3P1JKl
 aqemErrnb+CcFJYQT/tcXDVkSa4fxMcXZs/8FmYvBdhyxqxHr1SU5wjVHl6IDUfVUEJK
 zJYLLha2w744IFrZ/9AJfEUlSPKUmLFP5RzKCYm5kUK8CBhvlnV6ZiH92kRxyVWx/Vzl
 t0C6XPtm3BlAZ0ikpyAwXRGt5NlBylVALXZjUDcAAhJfjqgnvbz/49iniqtFlsOib+UW
 wukg==
X-Gm-Message-State: APjAAAWHziweuxXInt1P67RJG4yamw1XvfSoidYf3UwnZw8TGMoh2U81
 Xx/u4vNnkR6qYlx7Br8mFtwdrMTuNSmoQBGO3SYT+Q==
X-Google-Smtp-Source: APXvYqzER/6ghfGh+cCnTzWqlcRB44urm1l0GO8Y6AzN702AqR5wrDwl3TwRIfhgqi7cB1Nz5b8PL34nNbf3GVcacss=
X-Received: by 2002:a05:6602:220d:: with SMTP id
 n13mr19253423ion.104.1561148108546; 
 Fri, 21 Jun 2019 13:15:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190326182742.16950-1-matthewgarrett@google.com>
 <20190326182742.16950-7-matthewgarrett@google.com>
 <20190621063402.GA4528@localhost.localdomain>
 <CACdnJuvmU8PcRztTYRHes-O3QVwiXy_PQvP9AP=B=byX4Pu3uA@mail.gmail.com>
In-Reply-To: <CACdnJuvmU8PcRztTYRHes-O3QVwiXy_PQvP9AP=B=byX4Pu3uA@mail.gmail.com>
From: Matthew Garrett <mjg59@google.com>
Date: Fri, 21 Jun 2019 13:14:57 -0700
Message-ID: <CACdnJusyS=bHXTYMxQWObVL6rzGnh1g3KETayh0wyVEYdcjnpA@mail.gmail.com>
Subject: Re: [PATCH V31 06/25] kexec_file: split KEXEC_VERIFY_SIG into
 KEXEC_SIG and KEXEC_SIG_FORCE
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_131510_073228_9E677F43 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.2 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Jiri Bohac <jbohac@suse.cz>, Linux API <linux-api@vger.kernel.org>,
 kexec@lists.infradead.org, James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 LSM List <linux-security-module@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Jun 21, 2019 at 1:13 PM Matthew Garrett <mjg59@google.com> wrote:
>
> On Thu, Jun 20, 2019 at 11:34 PM Dave Young <dyoung@redhat.com> wrote:
> > Force use -EKEYREJECTED is odd,  why not just use original "ret"?
>
> Fair question. Jiri, any feelings here?

Actually, looks like this change was made by Dave Howells.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
