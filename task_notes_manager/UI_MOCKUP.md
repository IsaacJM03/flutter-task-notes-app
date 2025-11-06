# Task Notes Manager - UI Mockup Documentation

## Home Screen Layout

```
┌─────────────────────────────────────────┐
│  ← My Tasks & Notes                     │  ← AppBar
└─────────────────────────────────────────┘
┌─────────────────────────────────────────┐
│  My Tasks & Notes                       │  ← Header Text (Bold)
│                                         │
│  ┌─────────────────────────────────┐   │
│  │ ║ Complete Flutter Project      │   │  ← Task Card
│  │ ║                                │   │     (Red left border = High)
│  │ ║ Build a task notes manager    │   │
│  │ ║ app with navigation           │   │
│  │ ║                                │   │
│  │ ║ [High]                        │   │  ← Priority Badge
│  └─────────────────────────────────┘   │
│                                         │
│  ┌─────────────────────────────────┐   │
│  │ ║ Review Documentation          │   │  ← Task Card
│  │ ║                                │   │     (Orange left border = Medium)
│  │ ║ Read through Flutter widget   │   │
│  │ ║ documentation                 │   │
│  │ ║                                │   │
│  │ ║ [Medium]                      │   │  ← Priority Badge
│  └─────────────────────────────────┘   │
│                                         │
│  ┌─────────────────────────────────┐   │
│  │ ║ Update Dependencies           │   │  ← Task Card
│  │ ║                                │   │     (Green left border = Low)
│  │ ║ Check and update all package  │   │
│  │ ║ dependencies                  │   │
│  │ ║                                │   │
│  │ ║ [Low]                         │   │  ← Priority Badge
│  └─────────────────────────────────┘   │
│                                         │
└─────────────────────────────────────────┘
                                    ┌───┐
                                    │ + │  ← FloatingActionButton
                                    └───┘
```

## Home Screen - Empty State

```
┌─────────────────────────────────────────┐
│  ← My Tasks & Notes                     │  ← AppBar
└─────────────────────────────────────────┘
┌─────────────────────────────────────────┐
│  My Tasks & Notes                       │  ← Header Text
│                                         │
│                                         │
│              📝                         │  ← Large Icon
│                                         │
│         No tasks yet!                   │  ← Message
│                                         │
│   Tap the + button to add a task       │  ← Hint
│                                         │
│                                         │
└─────────────────────────────────────────┘
                                    ┌───┐
                                    │ + │  ← FloatingActionButton
                                    └───┘
```

## Add Task Screen Layout

```
┌─────────────────────────────────────────┐
│  ← Add New Task                         │  ← AppBar
└─────────────────────────────────────────┘
┌─────────────────────────────────────────┐
│                                         │
│  Task Details                           │  ← Section Header (Bold)
│                                         │
│  ┌─────────────────────────────────┐   │
│  │ 📄 Task Title                   │   │  ← TextFormField
│  │    Enter task title             │   │     with icon
│  └─────────────────────────────────┘   │
│                                         │
│  ┌─────────────────────────────────┐   │
│  │ 📋 Description                  │   │  ← TextFormField
│  │    Enter task description       │   │     (Multiline)
│  │                                 │   │
│  │                                 │   │
│  │                                 │   │
│  └─────────────────────────────────┘   │
│                                         │
│  ┌─────────────────────────────────┐   │
│  │ ⚠️  Priority                    │   │  ← DropdownButtonFormField
│  │    🔴 High                      ▼│   │     with colored indicators
│  └─────────────────────────────────┘   │
│                                         │
│  ┌─────────────────────────────────┐   │
│  │       Save Task                 │   │  ← ElevatedButton (Primary)
│  └─────────────────────────────────┘   │
│                                         │
│  ┌─────────────────────────────────┐   │
│  │       Cancel                    │   │  ← OutlinedButton (Secondary)
│  └─────────────────────────────────┘   │
│                                         │
└─────────────────────────────────────────┘
```

## Priority Dropdown Options

```
┌─────────────────────────────────┐
│ 🔴 High                         │  ← Red dot indicator
│ 🟠 Medium                       │  ← Orange dot indicator
│ 🟢 Low                          │  ← Green dot indicator
└─────────────────────────────────┘
```

## Color Coding

### Priority Colors in Task Cards:
- **High Priority**: Red left border (6px width) + Red/Pink background badge
- **Medium Priority**: Orange left border (6px width) + Orange/Yellow background badge
- **Low Priority**: Green left border (6px width) + Green/Mint background badge

### UI Elements:
- **AppBar Background**: Deep Purple (Material 3 theme)
- **Card Background**: White with elevation shadow
- **Text Input Fields**: Light grey background (Grey.shade50)
- **Save Button**: Purple (theme primary color) with white text
- **Cancel Button**: Outlined with grey border

## Typography

- **AppBar Title**: Default Material app bar text style
- **Header Text**: HeadlineSmall, Bold weight
- **Task Title**: 16px, Bold weight
- **Task Description**: 14px, Regular weight, Grey.shade700
- **Priority Badge**: 12px, Semi-bold weight
- **Button Text**: 16px, Bold weight

## Spacing & Layout

- **Card Margin**: 12px bottom
- **Card Padding**: 20px horizontal, 12px vertical
- **Section Padding**: 16px all around
- **Form Field Spacing**: 16px between fields
- **Border Radius**: 12px for cards, buttons, and inputs

## Interaction Flow

1. **Home Screen Load**: 
   - Shows 3 sample tasks
   - Tasks displayed in cards with priority colors

2. **Add Task Button Press**:
   - FAB animates
   - Navigates to Add Task Screen with slide transition

3. **Fill Form**:
   - Type title and description
   - Select priority from dropdown
   - Form validates on save

4. **Save Task**:
   - Validation runs
   - If valid: Returns to Home Screen with new task added
   - If invalid: Shows error messages under fields

5. **Cancel**:
   - Returns to Home Screen without adding task

## Responsive Design

- Content scrolls if it exceeds screen height
- ListView in Home Screen scrolls independently
- Form in Add Task Screen scrolls if keyboard appears
- All touch targets meet minimum size requirements (48x48dp)

## Accessibility Features

- All interactive elements have tooltips
- Form fields have proper labels
- Icon buttons have semantic labels
- Color is not the only indicator (text + color for priority)
- Proper contrast ratios for text
- Touch targets are appropriately sized

## Material Design 3 Features

- ✅ Color scheme from seed color
- ✅ Elevated cards with shadows
- ✅ Rounded corners (12px radius)
- ✅ Proper elevation levels
- ✅ Material ripple effects on buttons
- ✅ Floating Action Button with standard placement
- ✅ Standard AppBar design
- ✅ Form field designs with outlines
- ✅ Consistent spacing and padding
