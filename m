Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F313C1979A2
	for <lists+kexec@lfdr.de>; Mon, 30 Mar 2020 12:51:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mPw+Myna2FzOuX39bwNt3VO8xDMyn2hv1ZVKG1XsG4A=; b=DQpj0xedPl0EAD
	TsUZckb546gbgcZf60tzFLujwMhxo0WOH1EKXa2UfQERbgQPOfaruzD894mlEg3k4cqJBPW1XXU8Z
	FsohQK9nUlw5ar6IMiEw1mGywVinqTgzlHY4fAZU2jatgzZo3GAc+sv22uGnK/+EQKCAfnDknyefH
	5e+IG85kqZ/MpZJFUoMREoGw0mYrVwPx2TXLR8KtNTr8VGfScb6ThG7z48hLSU+tymhDlJg7QKIdX
	DftIgC11c8Bcnwtm+Yz9HriBNrpBWP7O76EZw9ZPJ8mW2LL/X4zT+N2d/Qk6lPMjcIXAMeg8eETT7
	AwKFyRFqhKeXm6+IpENQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIs17-0003pT-0B; Mon, 30 Mar 2020 10:51:41 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIs13-0003p7-PI
 for kexec@lists.infradead.org; Mon, 30 Mar 2020 10:51:38 +0000
Received: by mail-vs1-xe44.google.com with SMTP id s10so10657169vsi.9
 for <kexec@lists.infradead.org>; Mon, 30 Mar 2020 03:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=82B0OONv9gwbZlPp43NzThDz2fRV+KRFwafOQ16joDw=;
 b=pmfufcukdjtwJGNtxCWB6abIy5GQkydOhglTt3lU2SNSHQkXjHvYVAYU30qpH0ROcn
 6AR81pKR9LU8L5YeZnaBH9MvN/REWH5yRTWPgLFGTHBrQIMlYTgg1KzSS2HURZNZm8OD
 SUHydw70bw0Q0cdHd4uf2iXTPiDhTTTwYAdjzmZQ2jSivGRsQ2XoJx9BB/FYlSUeb5oy
 5awE4LGroq+bJGyUftKKYOLINHvkpei9FuchjXvbX7X9WnD9VXRR0fk+ICDWYXcZidms
 B2Tcxn0d5gO0STEGqpugUjsy6/FY3i0rb+Q9Aubo2nnGcM5Z3hnCHy9hm0pGt54tKkMk
 0diQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=82B0OONv9gwbZlPp43NzThDz2fRV+KRFwafOQ16joDw=;
 b=TnhGzQfbXb/okEzBzIIz+1sI7rrnWDHtRaEPhihpXPuE97D1MyWDF1PlAPXddIwiPn
 1rU+9KJlVx9fJyUdJ2Ee12QZDeVpO83jnPg+Mio4b8t9ifMyKOUa+3xjKnHvkJ+bHJQv
 72YkPnjl3S7jpym7O7obrfRZOH1nYrlZsOIrxes6yCV6aKOXeaIHXrvZ88XTCqn5B1Of
 toaUdj+yufBLgRgL2ym8j34PPZtWSDVWVYaE31HIWTchgJwYslznu3aUkbzbSatJNCk4
 PaRAjMR8ZFqPxlwvwGHFI63/ainCJCJo/2GsVvcOvTexycCZE7CMBgAR1qLiPDU5Hrii
 S2OQ==
X-Gm-Message-State: AGi0PuYqopROi3w9NKtBLz7ttCAbI8z87wcN94bTrETKJnTBp36cd6vn
 +usKCz1g/OKcXm+HO0DjF0Z8HN5rAXEvFWnuUS0=
X-Google-Smtp-Source: APiQypJa1PceJQJ4Uifc/OqOMsrqmrQouzmU8Q8RDUvIDEAu0nQ7VLXoyo7OeaG8ZGcz9++WgUurorK4eBNnHWQDQ14=
X-Received: by 2002:a67:e24c:: with SMTP id w12mr8440041vse.153.1585565496489; 
 Mon, 30 Mar 2020 03:51:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a67:c005:0:0:0:0:0 with HTTP; Mon, 30 Mar 2020 03:51:35
 -0700 (PDT)
From: Maryalice Williams <maryalicewilliams730@gmail.com>
Date: Mon, 30 Mar 2020 08:51:35 -0200
Message-ID: <CAKwdjspC3teZc3g9Bg3_Wsc-61AL3_=GrmVKBnDw_HTZuBNk5w@mail.gmail.com>
Subject: Reply For More Details.
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_035137_821053_55FC927D 
X-CRM114-Status: UNSURE (  -2.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [maryalicewilliams730[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [maryalicewilliams730[at]gmail.com]
 0.0 MILLION_HUNDRED        BODY: Million "One to Nine" Hundred
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 0.0 MONEY_FORM_SHORT       Lots of money if you fill out a short form
 0.9 ADVANCE_FEE_2_NEW_MONEY Advance Fee fraud and lots of money
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
Reply-To: maryalice00.12@postribe.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

-- 
My dear,

I am Mrs Maryalice Williams, I want to send you donation of two
million seven hundred thousand Dollars ($2.7M) for volunteer projects
in your country due to my ill health that could not permit me. Kindly
reply for more details, and also send me the following details, as per
below, your full Name ..........,  Address...........,
Age...............,  Occupation ...............

Remain blessed,
Mrs. Maryalice Williams.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
