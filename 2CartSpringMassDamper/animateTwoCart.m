function animateTwoCart(X)    
    x1 = X(1); % cart 1 position (m)
    x2 = X(3); % cart 2 postiion (m)
    
    % constants
    a = 1; % length of mass
    b = 5; % distance between masses & walls
    height = 0.5; % mass height
    
    % define mass 1 location
    m1_x1 = ((-b/2)-a)+x1;
    m1_x2 = ((-b/2)-a)+x1;
    m1_x3 = (-b/2)+x1;
    m1_x4 = (-b/2)+x1;
    m1_y1 = 0;
    m1_y2 = height;
    m1_y3 = height;
    m1_y4 = 0;
    m1_xlocation = [m1_x1, m1_x2, m1_x3, m1_x4, m1_x1];
    m1_ylocation = [m1_y1, m1_y2, m1_y3, m1_y4, m1_y1];

    % define mass 2 location
    m2_x1 = (b/2)+x2;
    m2_x2 = (b/2)+x2;
    m2_x3 = (b/2)+a+x2;
    m2_x4 = (b/2)+a+x2;
    m2_y1 = 0;
    m2_y2 = height;
    m2_y3 = height;
    m2_y4 = 0;
    m2_xlocation = [m2_x1, m2_x2, m2_x3, m2_x4, m2_x1];
    m2_ylocation = [m2_y1, m2_y2, m2_y3, m2_y4, m2_y1];

    % plot masses
    plot(m1_xlocation,m1_ylocation,'color','blue',LineWidth=2), hold on
    plot(m2_xlocation, m2_ylocation,'color',[1 0 0],LineWidth=2);
    title("2 Mass Spring Damper System")
    yline(0);
    axis([-8.5 8.5 -1 4]);
    xlabel('meters')
    ylabel('meters')
    set(gcf,'Position',[200 200 1000 500])
    drawnow
    hold off


end